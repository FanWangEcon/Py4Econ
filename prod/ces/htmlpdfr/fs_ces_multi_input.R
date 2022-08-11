## ----global_options, include = FALSE-----------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np


## # The CRS CES solver function

## def ffi_ces_crs_solver(ar_price, ar_share,

##                        fl_elasticity,

##                        fl_Q, fl_A):

##     # Price Ratio: divide each price by every other price

##     # PRICES x trans(1/PRICE)

##     # SHARES x trans(1/SHARES)

##     # fl_elasticity = 0.5

##     # fl_Q = 1

##     # fl_A = 1

## 

##     # np.random.seed(8888)

##     # ar_price = np.random.uniform(size=3)

##     # # ar_price = np.array([1,1,1])

##     # # ar_price = np.array([0.6965, 0.2861, 0.2269])

## 

##     # ar_share = np.random.uniform(size=3)

##     # ar_share = np.array([1,1,1])/3

##     # ar_share = np.array([0.3255, 0.4247, 0.2498])

##     ar_share = ar_share/sum(ar_share)

## 

##     # Each column divides by a different number

##     # [a;b;c] x [1/a, 1/b, 1/c] : (3 by 1) x (1 by 3)

##     mt_rela_price = np.outer(ar_price, np.reciprocal(ar_price))

##     np.reciprocal(mt_rela_price)

##     mt_rela_share = np.outer(ar_share, np.reciprocal(ar_share))

## 

##     # (p_j/p_i) x (alpha_i/alpha_j)

##     mt_rela_prcshr = np.multiply(mt_rela_price, np.reciprocal(mt_rela_share))

##     mt_rela_prcshr_rho = mt_rela_prcshr**(fl_elasticity/(1-fl_elasticity))

## 

##     # alpha_i x [(p_j/p_i) x (alpha_i/alpha_j)]^(rho/(1-rho))

##     # 1/p_i are columns

##     # (N by N) x (N by 1)

##     ar_sum = np.matmul(mt_rela_prcshr_rho, ar_share)

##     ar_sum_rho = ar_sum**(-1/fl_elasticity)

## 

##     # rescale

##     ar_opti_costmin_x = ar_sum_rho * fl_Q/fl_A

##     ar_opti_costmin_x

## 

##     # weighted average of prices

##     fl_mc_aggprice = (np.dot(ar_sum_rho, ar_price)/fl_A)

##     fl_mc_aggprice

## 

##     return ar_opti_costmin_x, fl_mc_aggprice

## 

## 

## # Test function

## fl_elasticity = 0.5

## fl_Q = 1

## fl_A = 1

## 

## # Test 1 fixed inputs

## ar_price = np.array([0.6965, 0.2861, 0.2269])

## ar_share = np.array([0.3255, 0.4247, 0.2498])

## ffi_ces_crs_solver(ar_price, ar_share, fl_elasticity, fl_Q, fl_A)

## # Test 2 common price

## ar_price_common = np.array([1, 1, 1])

## ffi_ces_crs_solver(ar_price_common, ar_share, fl_elasticity, fl_Q, fl_A)

## 

## # Test 3 common share

## ar_share_common = np.array([1, 1, 1])/3

## ffi_ces_crs_solver(ar_price, ar_share_common, fl_elasticity, fl_Q, fl_A)

## 

## # Test 4 fixed price and shares

## np.random.seed(8888)

## ar_price_rand = np.random.uniform(size=3)

## ar_share_rand = np.random.uniform(size=3)

## ffi_ces_crs_solver(ar_price_rand, ar_share_rand, fl_elasticity, fl_Q, fl_A)

## 

## # relative price function

## def ffi_ces_rela_opti(ar_inputs_x, ar_share,

##                       fl_elasticity, it_idx_base=0):

## 

##     # relative prices, with it_index_price_1 price normalized to 1.

##     ar_rela_prices = np.multiply((ar_share * 1/ar_share[it_idx_base]),

##                                  (ar_inputs_x * 1/ar_inputs_x[it_idx_base])**(fl_elasticity - 1))

## 

##     return(ar_rela_prices)

## 

## 

## # Test

## # Input optimal quantities

## fl_elasticity = 0.5

## fl_Q = 1

## fl_A = 1

## ar_price = np.array([0.6965, 0.2861, 0.2269])

## ar_share = np.array([0.3255, 0.4247, 0.2498])

## ar_opti_costmin_x, fl_mc_aggprice = ffi_ces_crs_solver(ar_price, ar_share,

##                                                        fl_elasticity,

##                                                        fl_Q, fl_A)

## # Solve for relative prices given demand optimality

## it_index_price_1 = 0

## ar_rela_prices = ffi_ces_rela_opti(ar_opti_costmin_x, ar_share, fl_elasticity,

##                                    it_idx_base=it_index_price_1)

## ar_price/ar_price[it_index_price_1]

