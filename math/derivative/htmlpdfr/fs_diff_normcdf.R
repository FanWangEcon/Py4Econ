## ----global_options, include = FALSE-------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np

## import sympy as sym

## import scipy.stats as stats

## import pandas as pd

## import pprint


## # Mean and standard deviations

## fl_mu = 5

## fl_sd = 1.314

## 
## # Define an array of x-values

## ar_x = np.linspace(fl_mu-3*fl_sd, fl_mu+3*fl_sd, 5)

## ar_z = (ar_x - fl_mu)/fl_sd

## 
## # PDFs

## ar_fx_pdf = stats.norm.pdf(ar_x, fl_mu, fl_sd)

## ar_fz_pdf = stats.norm.pdf(ar_z, 0, 1)

## 
## # CDFs

## ar_fx_cdf = stats.norm.cdf(ar_x, fl_mu, fl_sd)

## ar_fz_cdf = stats.norm.cdf(ar_z, 0, 1)

## 
## # Combine

## mt_pdf_cdf = np.column_stack((ar_x, ar_z,

##     ar_fx_pdf, ar_fz_pdf, ar_fx_cdf, ar_fz_cdf)).astype(float)

## ar_colnames = ['x', 'z', 'pdf_x', 'pdf_zneqx', 'cdf_x', 'cdf_z']

## ar_rownames = ['x=' + str(fl_x) for fl_x in ar_x]

## df_pdf_cdf = pd.DataFrame(data=np.around(mt_pdf_cdf, 4),

##                               index=ar_rownames,

##                               columns=ar_colnames)

## 
## # Show derivatives of CDF

## print(df_pdf_cdf)


## # using mean and sd and array of x from last block

## # Evaluate pdf using scipy stats

## ar_f_x_pkg = stats.norm.pdf(ar_x, fl_mu, fl_sd)

## 
## # Evaluate using numpy

## ar_f_x_fml = (1/np.sqrt(2*np.pi*(fl_sd**2)))*np.exp((-1/2)*(((ar_x - fl_mu)**2)/(fl_sd**2)))

## ar_f_z_fml = (1/np.sqrt(2*np.pi))*np.exp((-1/2)*((ar_x-fl_mu)/fl_sd)**2)

## 
## # Evaluate using sympy

## x, mu, sd = sym.symbols('x mu sd')

## sy_f_x = (1/sym.sqrt(2*sym.pi*(sd**2)))*sym.exp((-1/2)*(((x - mu)**2)/(sd**2)))

## ar_f_x_sym = [sy_f_x.subs([(x, fl_x), (mu, fl_mu), (sd, fl_sd)]).evalf() for fl_x in ar_x]

## 
## # Compare

## mt_pdf = np.column_stack((ar_f_x_pkg, ar_f_x_sym, ar_f_x_fml, ar_f_z_fml)).astype(float)

## ar_colnames = ['stats.norm.pdf', 'symbolic', 'formula_fx', 'formula_fz_neq_fx']

## df_pdf = pd.DataFrame(data=np.round(mt_pdf, 4),

##                       index=ar_rownames,

##                       columns=ar_colnames)

## print(df_pdf)


## # using mean and sd and array of x from prior blocks

## # Take derivative

## sy_df_dx = sym.diff(sy_f_x, x)

## # Derivative given mu and sd

## sy_df_dx = sy_df_dx.subs([(mu, fl_mu), (sd, fl_sd)])

## sy_df_dx = sym.simplify(sy_df_dx)

## # Evaluate symbol

## ar_df_dx_sym = [sy_df_dx.subs([(x, fl_x)]).evalf() for fl_x in ar_x]

## 
## # Evaluate using numpy with formula

## ar_df_dx_fml = -1*ar_f_z_fml*((ar_x - fl_mu)/(fl_sd**2))

## 
## # Evaluate with derivative definition

## ar_epsilon = np.array([1e-1, 1e-2, 1e-4, 1e-8])

## mt_df_dx = np.empty((ar_x.shape[0], ar_epsilon.shape[0]))

## ar_pdf_x = stats.norm.pdf(ar_x, fl_mu, fl_sd)

## for it_eps_ctr, fl_epsilon in enumerate(ar_epsilon):

##   ar_pdf_x_plus_epsilon = stats.norm.pdf(ar_x+fl_epsilon, fl_mu, fl_sd)

##   mt_df_dx[:, it_eps_ctr] = (ar_pdf_x_plus_epsilon - ar_pdf_x)/(fl_epsilon)

## 
## # Combine and print

## mt_df_dx = np.column_stack((ar_df_dx_sym, ar_df_dx_fml, mt_df_dx)).astype(float)

## ar_colnames = ['symbolic.df_dx', 'formula_df_dx'] + [ 'diff=' + str(fl_eps) for fl_eps in ar_epsilon]

## df_df_dx = pd.DataFrame(data=np.around(mt_df_dx, 4),

##                       index=ar_rownames,

##                       columns=ar_colnames)

## print(df_df_dx)


## # Find CDF by taking difference using scipy CDF function

## ar_epsilon = np.array([1e-6, 1e-9, 1e-12])

## mt_dCDF_dx_dif = np.empty((ar_epsilon.shape[0]+1, ar_x.shape[0]))

## ar_cdf_x = stats.norm.cdf(ar_x, fl_mu, fl_sd)

## for it_eps_ctr, fl_epsilon in enumerate(ar_epsilon):

##   ar_cdf_x_plus_epsilon = stats.norm.cdf(ar_x+fl_epsilon, fl_mu, fl_sd)

##   ar_dCDF_dx_dif = (ar_cdf_x_plus_epsilon - ar_cdf_x)/(fl_epsilon)

##   mt_dCDF_dx_dif[it_eps_ctr, ] = ar_dCDF_dx_dif

## 
## # Derivative formula, note we use ar_f_z_fml, not ar_f_x_fml

## ar_dCDF_dx_fml = (1/fl_sd)*ar_f_z_fml

## mt_dCDF_dx_dif[ar_epsilon.shape[0],] = ar_dCDF_dx_fml

## mt_dCDF_dx_dif = np.transpose(mt_dCDF_dx_dif)

## 
## # To panda

## ar_colnames = ['diff=' + str(fl_eps) for fl_eps in ar_epsilon] + ['formula']

## ar_rownames = ['x=' + str(fl_x) for fl_x in ar_x]

## df_dCDF_dx_dif = pd.DataFrame(data=np.round(mt_dCDF_dx_dif, 3),

##                               index=ar_rownames,

##                               columns=ar_colnames)

## 
## # Show derivatives of CDF

## print(df_dCDF_dx_dif)


## # Find CDF by taking difference using scipy CDF function

## ar_epsilon = np.array([1e-6, 1e-9, 1e-12])

## mt_dCDF_dx_dif_sd = np.empty((ar_epsilon.shape[0]+1, ar_x.shape[0]))

## ar_cdf_x = stats.norm.cdf(ar_x, fl_mu, fl_sd)

## for it_eps_ctr, fl_epsilon in enumerate(ar_epsilon):

##   # now add to the fl_sd part

##   ar_cdf_x_plus_epsilon = stats.norm.cdf(ar_x, fl_mu, fl_sd+fl_epsilon)

##   ar_dCDF_dx_dif_sd = (ar_cdf_x_plus_epsilon - ar_cdf_x)/(fl_epsilon)

##   mt_dCDF_dx_dif_sd[it_eps_ctr, ] = ar_dCDF_dx_dif_sd

## 
## # Derivative formula, note we use ar_f_z_fml, not ar_f_x_fml

## ar_dCDF_dx_fml_sd = -((ar_x-fl_mu)/fl_sd**2)*ar_f_z_fml

## mt_dCDF_dx_dif_sd[ar_epsilon.shape[0],] = ar_dCDF_dx_fml_sd

## mt_dCDF_dx_dif_sd = np.transpose(mt_dCDF_dx_dif_sd)

## 
## # To panda

## ar_colnames = ['sd_diff=' + str(fl_eps) for fl_eps in ar_epsilon] + ['formula_dPHI_dSD']

## ar_rownames = ['x=' + str(fl_x) for fl_x in ar_x]

## df_dCDF_dx_dif_sd = pd.DataFrame(data=np.round(mt_dCDF_dx_dif_sd, 3),

##                                  index=ar_rownames,

##                                  columns=ar_colnames)

## 
## # Show derivatives of CDF

## print(df_dCDF_dx_dif_sd)


## # Check if the derivative derived is correct

## # Various parameters

## fl_rho = -0.0473

## fl_beta = 0.0725

## fl_A = np.exp(4.1435)

## fl_gamma = 0.0325

## fl_lambda = -0.0257

## fl_mu = 77

## fl_sigma = 1.5

## 
## # Price and income

## fl_P = 53

## fl_Y = 449

## 
## # An array of N choices

## ar_N = np.linspace(1, 30, 5)

## 
## # Evaluate formula components

## fc_c = lambda N: fl_Y - fl_P * N

## fc_mpn = lambda N: fl_beta*fl_A*(N**(fl_beta-1))

## fc_health = lambda N: fl_A*(N**fl_beta)

## fc_cdf_health = lambda H: stats.norm.cdf((H - fl_mu)/fl_sigma, 0, 1)

## fc_pdf_health = lambda H: stats.norm.pdf((H - fl_mu)/fl_sigma, 0, 1)

## 
## # Evaluate FOC formula explicitly

## ar_FOC = (2*fl_rho*(fl_P**2)*ar_N - 2*fl_rho*fl_P*fl_Y - fl_P)

## ar_FOC = ar_FOC + fc_mpn(ar_N)*(fl_gamma + fl_lambda*fc_cdf_health(fc_health(ar_N)))

## 
## # The Utility function

## def g_N_eval(N):

##   ar_health = fc_health(N)

##   g_N = (fc_c(N) + fl_rho*(fc_c(N)**2)) + fl_gamma*ar_health

##   g_N = g_N + fl_lambda*(ar_health - fl_mu)*fc_cdf_health(ar_health)

##   g_N = g_N + fl_lambda*fl_sigma*fc_pdf_health(ar_health)

##   return g_N

## 
## # Compute Utility and Directly take differences.

## ar_epsilon = np.array([1e-6, 1e-9, 1e-12])

## mt_dG_dN_dif = np.empty((ar_N.shape[0], ar_epsilon.shape[0]))

## ar_g_N = g_N_eval(ar_N)

## for it_eps_ctr, fl_epsilon in enumerate(ar_epsilon):

##   ar_g_N_plus_epsilon = g_N_eval(ar_N+fl_epsilon)

##   ar_dG_dN_dif = (ar_g_N_plus_epsilon - ar_g_N)/(fl_epsilon)

##   mt_dG_dN_dif[:, it_eps_ctr] = ar_dG_dN_dif

## 
## # To panda

## mt_dG_dN = np.column_stack((ar_FOC, mt_dG_dN_dif)).astype(float)

## ar_colnames = ['formula_dG_dN'] + [ 'diff=' + str(fl_eps) for fl_eps in ar_epsilon]

## ar_rownames = ['N=' + str(fl_N) for fl_N in ar_N]

## df_dG_dN = pd.DataFrame(data=np.around(mt_dG_dN, 4),

##                         index=ar_rownames,

##                         columns=ar_colnames)

## print(df_dG_dN)

