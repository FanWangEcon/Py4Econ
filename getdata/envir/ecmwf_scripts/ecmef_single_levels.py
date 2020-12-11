# A. Data Source
# https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview

# B. If working from command line: activate conda env and run this script
# conda activate wk_ecmwf
# cd "C:/Users/fan/pyfan/vig/getdata/envir/ecmwf_scripts"
# python "C:/Users/fan/pyfan/vig/getdata/envir/ecmwf_scripts/ecmef_single_levels.py"

# C. Load Packages
import subprocess
import os
import cdsapi
import xarray as xr
import pandas as pd

# D. Set directory names and file download name and variable name
# Variable to download
ls_svr_variable = [
    '10m_u_component_of_wind', '10m_v_component_of_wind', '2m_dewpoint_temperature',
    '2m_temperature', 'mean_sea_level_pressure', 'surface_pressure']
# 'total_precipitation' and convective_precipitation downloads separately
# ls_svr_variable = [
#     'total_precipitation', 'convective_precipitation']

# File Path
spt_root = "C:/Users/fan/pyfan/vig/getdata/envir/_data/test/"
# File Name
snm_data = 'test_china_temp'

# E. Download file name
# 1. .grib: downloaded grib data
# 2. _raw.csv: raw csv with bad comma separation
# 3. .csv: comma correctly spearated file
snm_data_grib = snm_data + ".grib"
snm_data_csv_raw = snm_data + "_raw.csv"
snm_data_csv = snm_data + ".csv"
spn_dl_test_grib = spt_root + snm_data_grib

# F. API data request
os.chdir(spt_root)
c = cdsapi.Client()
res = c.retrieve("reanalysis-era5-single-levels",
                 {
                     'product_type': 'reanalysis',
                     'variable': ls_svr_variable,
                     'year': '2008',
                     'month': '01',
                     'day': '01',
                     'time': ['02:00', '12:00'],
                     'area': [23.50, 113.00, 22.25, 114.50],
                     'grid': [1.0, 1.0],
                     "format": "grib"
                 },
                 spn_dl_test_grib
                 )
# show results
print('print results')
print(res)
print(type(res))

# G. use cfgrib to read downloaded grib file
dsxr = xr.load_dataset(snm_data_grib, engine='cfgrib')
pd.concat([dsxr['u10'].to_series(), dsxr['v10'].to_series(),
           dsxr['d2m'].to_series(), dsxr['t2m'].to_series(),
           dsxr['msl'].to_series(), dsxr['sp'].to_series()],
          axis=1).to_csv(snm_data_csv, index=True)
# pd.concat([dsxr['tp'].to_series(),dsxr['cp'].to_series()],
#           axis=1).to_csv(snm_data_csv, index=True)


# cfgrib.open_file(snm_data_grib)
# ds = pygrib.open(snm_data_grib)
# for g in ds:
#     print(g)

# # G. Review Grib outputs
# # (wk_ecmwf) C:\Users\fan\pyfan\vig\getdata\envir\_data\test>grib_ls -P time test_china_temp.grib
# # grib_get_data -p time,dataDate,shortName test_china_temp.grib > temp.txt
# cmd_popen_grib_ls = subprocess.Popen(["grib_ls", "-P", "time", snm_data_grib],
#                                      stdin=subprocess.PIPE,
#                                      stdout=subprocess.PIPE,
#                                      stderr=subprocess.PIPE)
# output_grib_ls, err = cmd_popen_grib_ls.communicate()
# print(output_grib_ls.decode('utf-8'))
# print(err.decode('utf-8'))

# # H1. Convert grib to csv
# # grib_get_data test_china_temp.grib > test_china_temp.csv
# os.chdir(spt_root)
# cmd_popen_grib_get_data = subprocess.Popen([
#     "grib_get_data", "-p", "time,dataDate,shortName", snm_data_grib],
#     stdin=subprocess.PIPE,
#     stdout=subprocess.PIPE,
#     stderr=subprocess.PIPE)
# stf_output_grid_get_data, err = cmd_popen_grib_get_data.communicate()
# stf_output_grid_get_data = stf_output_grid_get_data.decode('utf-8')
# srn_file_tex = spt_root + snm_data_csv_raw
# fl_tex_contents = open(srn_file_tex, 'w')
# fl_tex_contents.write(stf_output_grid_get_data)
# fl_tex_contents.close()

# # H2. CSV proper Comma Separation
# with open(snm_data_csv_raw, 'r') as f_in, open(snm_data_csv, 'w') as f_out:
#     # skip title line
#     next(f_in)
#     # rewrite title line
#     f_out.write('lat, lon, val, hours, date, variable\n')
#     for line in f_in:
#         if 'Latitude' in line:
#             pass
#         else:
#             st_save = ','.join(line.split()) + '\n'
#             if not st_save.strip():
#                 continue
#             f_out.write(st_save)
