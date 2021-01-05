## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np

## import statsmodels.api as sm


## import numpy as np

## import statsmodels.api as sm

## spector_data = sm.datasets.spector.load(as_pandas=False)

## spector_data.exog = sm.add_constant(spector_data.exog, prepend=False)

## mod = sm.OLS(spector_data.endog, spector_data.exog)

## res = mod.fit()

## print(res.summary())


## # Number of observations

## it_sample = 1000000

## # Vaues of the x variable

## ar_x = np.linspace(0, 10, it_sample)

## # generate matrix of inputs with polynomial expansion

## mt_x = np.column_stack((ar_x, ar_x**2, ar_x**3, ar_x**4, ar_x**5, ar_x**6, ar_x**7, ar_x**8))

## # model coefficients

## ar_beta = np.array([100, 10, 1, 1e-1, 1e-2, 1e-3, 1e-4, 1e-5, 1e-6])

## # Generate the error term

## ar_e = np.random.normal(size=it_sample)

## # add constant

## mt_x = sm.add_constant(mt_x)

## # generate the outocome variable

## ar_y = np.dot(mt_x, ar_beta) + ar_e

## # regression result

## ob_model = sm.OLS(ar_y, mt_x)

## # Show results

## ob_results = ob_model.fit()

## print(ob_results.summary())


## # Number of observations

## it_sample = 5

## # Vaues of the x variable

## ar_x = np.linspace(0, 10, it_sample)

## # generate matrix of inputs with polynomial expansion

## mt_x = np.column_stack((ar_x, ar_x**2, ar_x**3, ar_x**4, ar_x**5, ar_x**6, ar_x**7, ar_x**8))

## # model coefficients

## ar_beta = np.array([100, 10, 1, 1e-1, 1e-2, 1e-3, 1e-4, 1e-5, 1e-6])

## # Generate the error term

## ar_e = np.random.normal(size=it_sample)

## # add constant

## mt_x = sm.add_constant(mt_x)

## # generate the outocome variable

## ar_y = np.dot(mt_x, ar_beta) + ar_e

## # regression result

## ob_model = sm.OLS(ar_y, mt_x)

## # Show results

## ob_results = ob_model.fit()

## print(ob_results.summary())

