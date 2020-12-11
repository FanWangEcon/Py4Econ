# cd "C:/Users/fan/pyfan/vig/getdata/envir/ecmwf_scripts"
# python "C:/Users/fan/pyfan/vig/getdata/envir/ecmwf_scripts/ecmef_single_levels_loop.py"

import os
import cdsapi
import pandas as pd
import numpy as np
from datetime import datetime, timedelta
from netCDF4 import Dataset, date2num, num2date

#################################################
# ------------ Parameters
#################################################

# A. Folders
spt_root = 'C:/Users/fan/Downloads/_data/'
snm_data = 'china_total_precipitation'
st_era5_prefix = "ECMWF_ERA5_"

ar_days = ['01', '02']
# # Whole of China File Very Large
# ls_coordiantes_area = '53.31, 73, 4.15, 135'
# This is Guangdong only?
ar_coordiantes_area = [23.50, 113.00, 22.25, 114.50]

# Years list
# ar_years = 2001:2019
ar_years = [2005, 2015]
# ar_months_g1 = ['01','02','03','04','05','06']
ar_months_g1 = ['01', '03']
# ar_months_g2 = ['07','08','09','10','11','12']
ar_months_g2 = ['07', '09']

#################################################
# ------------ Process
#################################################

for it_yr in ar_years:
    for it_mth_group in [1, 2]:
        if it_mth_group == 1:
            ar_months = ar_months_g1
        if it_mth_group == 2:
            ar_months = ar_months_g2

        # A. Process Each
        snm_data_nc_hourly = spt_root + snm_data + '.nc'
        # CSV file
        st_csv_date_start = str(it_yr) + str(min(ar_months)) + str(min(ar_days))
        st_csv_date_end = str(it_yr) + str(max(ar_months)) + str(max(ar_days))
        st_csv_file_name = st_era5_prefix + st_csv_date_start + '_to_' + st_csv_date_end + '.csv'
        snm_data_csv = spt_root + st_csv_file_name

        # B. API Request
        c = cdsapi.Client()
        res = c.retrieve(
            'reanalysis-era5-single-levels',
            {
                'product_type': 'reanalysis',
                'variable': [
                    'total_precipitation'
                ],
                'year': [it_yr],
                'month': ar_months,
                'day': ar_days,
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
                'area': ar_coordiantes_area,
                'grid': [0.25, 0.25],
                'format': 'netcdf',
            },
            snm_data_nc_hourly)

        # C. show Progress
        print('print results')
        print(res)
        print(type(res))

        # Open netCDF4 file
        ds_src = Dataset(snm_data_nc_hourly)
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
        sr_day_sum = df.groupby(['latitude', 'longitude', 'date'])['tp'].sum()
        df_day_sum = sr_day_sum.reset_index()

        # convert to csv
        df_day_sum.to_csv(snm_data_csv, index=False)

