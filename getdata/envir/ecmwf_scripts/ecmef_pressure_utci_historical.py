# conda activate wk_ecmwf
# cd "C:\Users\fan\pyfan\vig\getdata\envir\ecmwf_scripts\"
# python ecmef_pressure_utci_historical.py

import cdsapi
import urllib.request

# download folder
spt_root = "C:/Users/fan/downloads/_data/"
spn_dl_test_grib = spt_root + "test_utci.zip"
# request
c = cdsapi.Client()
res = c.retrieve(
    'derived-utci-historical',
    {
        'format': 'zip',
        'variable': 'Universal thermal climate index',
        'product_type': 'Consolidated dataset',
        'year': '2008',
        'month': [
            '01'
        ],
        'day': [
            '01', '03'
        ],
        'area': [53.31, 73, 4.15, 135],
        'grid': [0.25, 0.25],
    },
    spn_dl_test_grib)
# show results
print('print results')
print(res)
print(type(res))
