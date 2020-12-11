# cd "C:/Users/fan/pyfan/vig/getdata/envir/ecmwf_scripts"
# python "C:/Users/fan/pyfan/vig/getdata/envir/ecmwf_scripts/ecmef_single_levels_loop.py"

import os
import cdsapi
import cfgrib
import xarray as xr
import pandas as pd

#################################################
# ------------ Parameters
#################################################

# A. Folders
spt_root = 'C:/Users/fan/Downloads/_data/'
snm_data = 'china_temp'
st_era5_prefix = "ECMWF_ERA5_"

ar_days = ['01', '02']
ar_hours = ['02:00', '12:00']
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
        snm_data_grib = spt_root + snm_data + '.grib'
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
                    '10m_u_component_of_wind',
                    '10m_v_component_of_wind',
                    '2m_dewpoint_temperature',
                    '2m_temperature',
                    'mean_sea_level_pressure',
                    'surface_pressure'
                ],
                'year': [it_yr],
                'month': ar_months,
                'day': ar_days,
                'time': ar_hours,
                'area': ar_coordiantes_area,
                'grid': [0.25, 0.25],
                'format': 'grib',
            },
            snm_data_grib)

        # C. show Progress
        print('print results')
        print(res)
        print(type(res))

        # D. use cfgrib to read downloaded grib file
        dsxr = xr.load_dataset(snm_data_grib, engine='cfgrib')
        pd.concat([dsxr['u10'].to_series(), dsxr['v10'].to_series(),
                   dsxr['d2m'].to_series(), dsxr['t2m'].to_series(),
                   dsxr['msl'].to_series(), dsxr['sp'].to_series()],
                  axis=1).to_csv(snm_data_csv, index=True)
