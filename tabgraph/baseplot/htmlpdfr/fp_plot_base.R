## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # Import Packages

## import numpy as np

## import matplotlib.pyplot as plt

## 
## # Generate X and Y

## np.random.seed(123)

## ar_fl_y1_rand = np.random.normal(0, 2, 100)

## ar_fl_y2_rand = np.cumsum(np.random.normal(0, 1, 100))

## ar_it_x_grid = np.arange(1,len(ar_fl_y1_rand)+1)

## 
## # Start Figure

## fig, ax = plt.subplots()

## 
## # Graph

## ax.plot(ar_it_x_grid, ar_fl_y1_rand,

##                      color='blue', linestyle='dashed',

##                      label='sd=2, 0 persistence')

## ax.plot(ar_it_x_grid, ar_fl_y2_rand,

##                      color='red', linestyle='solid',

##                      label='sd=1, random walk')

## 

## # Labeling

## ax.legend(loc='upper left')

## plt.ylabel('Random Standard Normal Draws')

## plt.xlabel('Time Periods')

## plt.title('White Noise')

## plt.grid()

## plt.show()

