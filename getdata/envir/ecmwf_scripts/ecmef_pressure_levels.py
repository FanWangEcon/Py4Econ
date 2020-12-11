# https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview
# conda activate wk_ecmwf
# cd "C:\Users\fan\pyfan\vig\getdata\envir\ecmwf_scripts\"
# python ecmef_pressure_levels.py

import cdsapi
import urllib.request

# download folder
spt_root = "C:/Users/fan/downloads/_data/"
spn_dl_test_grib = spt_root + "test_china_temp.grib"
# request
c = cdsapi.Client()
res = c.retrieve("reanalysis-era5-pressure-levels",
                 {
                     'product_type': 'reanalysis',
                     'variable': 'temperature',
                     'pressure_level': '1000',
                     'year': '2008',
                     'month': '01',
                     'day': '01',
                     'time': '12:00',
                     'format': 'netcdf',
                     'area': [53.31, 73, 4.15, 135],
                     'grid': [1.0, 1.0],
                     "format": "grib"
                 },
                 spn_dl_test_grib
                 )
# show results
print('print results')
print(res)
print(type(res))
