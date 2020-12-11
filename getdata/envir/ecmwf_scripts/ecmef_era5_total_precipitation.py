# A. Data Source
# https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview

# B. Instructions
# https://confluence.ecmwf.int/display/CKB/ERA5%3A+How+to+calculate+daily+total+precipitation
# https://confluence.ecmwf.int/display/CKB/How+to+convert+NetCDF+to+CSV
# Use the code from this link test it out

# C. Load Packages
import subprocess
import os
import cdsapi
import xarray as xr
import pandas as pd

import time, sys
from datetime import datetime, timedelta

from netCDF4 import Dataset, date2num, num2date
import numpy as np

# D. Set directory names and file download name and variable name
# Variable to download
ls_svr_variable = ['total_precipitation']

# File Path
spt_root = "C:/Users/fan/pyfan/vig/getdata/envir/_data/test/"
# File Name
snm_data = 'test_china_total_precipitation'

# E. Download file name
# 1. .nc: download nc file
# 2. _raw.csv: raw csv with bad comma separation
# 3. .csv: comma correctly spearated file
snm_data_grib_hourly = snm_data + "_hourly.nc"
snm_data_grib_dailly = snm_data + "_dailly.nc"
snm_data_csv_raw = snm_data + "_raw.csv"
snm_data_csv = snm_data + ".csv"
spn_dl_test_hourly_nc = spt_root + snm_data_grib_hourly
spn_dl_test_dailly_nc = spt_root + snm_data_grib_dailly

# F. API data request
os.chdir(spt_root)
c = cdsapi.Client()
res = c.retrieve("reanalysis-era5-single-levels",
                 {
                     'product_type': 'reanalysis',
                     'variable': ls_svr_variable,
                     'year': '2017',
                     'month': '01',
                     'day': ['01', '02'],
                     'time': [
                         '00:00', '01:00', '02:00',
                         '03:00', '04:00', '05:00',
                         '06:00', '07:00', '08:00',
                         '09:00', '10:00', '11:00',
                         '12:00', '13:00', '14:00',
                         '15:00', '16:00', '17:00',
                         '18:00', '19:00', '20:00',
                         '21:00', '22:00', '23:00'
                     ],
                     'area': [30.50, 100.00, 22.25, 114.50],
                     'grid': [1.0, 1.0],
                     "format": "netcdf"
                 },
                 spn_dl_test_hourly_nc
                 )
# show results
print('print results')
print(res)
print(type(res))

bl_sum_test = False

if ~bl_sum_test:
    # Based on:
    # https://confluence.ecmwf.int/display/CKB/How+to+convert+NetCDF+to+CSV

    # Open netCDF4 file
    ds_src = Dataset(spn_dl_test_hourly_nc)
    # Extract variable
    var_tp = ds_src.variables['tp']

    # get the three dimensions, time, lat, and long
    time_dim, lat_dim, lon_dim = var_tp.get_dims()
    time_var = ds_src.variables[time_dim.name]
    times = num2date(time_var[:], time_var.units)
    # the flattening at the end converts variables to single column
    latitudes = ds_src.variables[lat_dim.name][:]
    longitudes = ds_src.variables[lon_dim.name][:]

    # Convert to dataframe
    [mt_times, mt_lat, mt_long] = np.meshgrid(times, latitudes, longitudes, indexing='ij')

    ar_times = np.ravel(mt_times)
    ar_lat = np.ravel(mt_lat)
    ar_long = np.ravel(mt_long)

    df = pd.DataFrame({
        'time': [t.isoformat() for t in ar_times],
        'latitude': ar_lat,
        'longitude': ar_long,
        'tp': var_tp[:].flatten()})

    # Get date and hour
    df['date'] = pd.to_datetime(df['time']).dt.date
    df['hour'] = pd.to_datetime(df['time']).dt.hour

    # sort and group, and summ
    sr_day_sum = df.groupby(['latitude','longitude','date'])['tp'].sum()
    df_day_sum = sr_day_sum.reset_index()

    # convert to csv
    filename = os.path.join(spt_root, snm_data_csv)

    df_day_sum.to_csv(filename, index=False)
    print('Done')

else:
    # Based on:
    # https://confluence.ecmwf.int/display/CKB/ERA5%3A+How+to+calculate+daily+total+precipitation
    # simple sum over some timeframe of total precipitation.

    # A. The current Time Range to Average over, this is one day
    day = 20080101
    d = datetime.strptime(str(day), '%Y%m%d')
    time_needed = []
    for i in range(1, 25):
        time_needed.append(d + timedelta(hours=i))

    # B. Open up NC datafile
    ds_src = Dataset(spn_dl_test_hourly_nc)
    var_time = ds_src.variables['time']
    time_avail = num2date(var_time[:], var_time.units, calendar=var_time.calendar)

    # C. Which of the times we are interested in is available in the the nc file.
    indices = []
    for tm in time_needed:
        a = np.where(time_avail == tm)[0]
        if len(a) == 0:
            sys.stderr.write('Error: precipitation data is missing/incomplete - %s!\n'
                             % tm.strftime('%Y%m%d %H:%M:%S'))
            sys.exit(200)
        else:
            print('Found %s' % tm.strftime('%Y%m%d %H:%M:%S'))
            indices.append(a[0])

    # D.
    var_tp = ds_src.variables['tp']
    tp_values_set = False
    for idx in indices:
        if not tp_values_set:
            data = var_tp[idx, :, :]
            tp_values_set = True
        else:
            data += var_tp[idx, :, :]

    ds_dest = Dataset(spn_dl_test_dailly_nc, mode='w', format='NETCDF3_64BIT_OFFSET')

    # Dimensions
    for name in ['latitude', 'longitude']:
        dim_src = ds_src.dimensions[name]
        ds_dest.createDimension(name, dim_src.size)
        var_src = ds_src.variables[name]
        var_dest = ds_dest.createVariable(name, var_src.datatype, (name,))
        var_dest[:] = var_src[:]
        var_dest.setncattr('units', var_src.units)
        var_dest.setncattr('long_name', var_src.long_name)

    ds_dest.createDimension('time', None)
    var = ds_dest.createVariable('time', np.int32, ('time',))
    time_units = 'hours since 1900-01-01 00:00:00'
    time_cal = 'gregorian'
    var[:] = date2num([d], units=time_units, calendar=time_cal)
    var.setncattr('units', time_units)
    var.setncattr('long_name', 'time')
    var.setncattr('calendar', time_cal)

    # Variables
    var = ds_dest.createVariable(var_tp.name, np.double, var_tp.dimensions)
    var[0, :, :] = data
    var.setncattr('units', var_tp.units)
    var.setncattr('long_name', var_tp.long_name)

    # Attributes
    ds_dest.setncattr('Conventions', 'CF-1.6')
    ds_dest.setncattr('history', '%s %s'
                      % (datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
                         ' '.join(time.tzname)))

    print('Done! Daily total precipitation saved')

    # Open file
