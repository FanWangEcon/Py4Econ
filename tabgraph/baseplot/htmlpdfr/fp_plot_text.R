## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # Import Packages

## import matplotlib.pyplot as plt

## import textwrap

## import json

## 
## # Dict of String to String

## dc_path = {'C:\\Users\\fan\\Documents\\Dropbox (UH-ECON)\\repos\\Tex4Econ\\'

##            '_other\\equation\\cases.tex':

##                'C:/Users/fan/Documents/cases.pdf',

##            'C:\\Users\\fan\\Documents\\Dropbox (UH-ECON)\\repos\\Tex4Econ\\'

##            '_other\\symbols\\fs_symbols.tex':

##                'C:/Users/fan/Documents/fs_symbols.pdf'}

## st_dc_path = textwrap.fill(json.dumps(dc_path), width = 70)

## 
## # Start Plot

## fig, ax = plt.subplots()

## 
## # Text Plot

## ax.text(0.5, 0.5, st_dc_path,

##         horizontalalignment='center',

##         verticalalignment='center',

##         fontsize=14, color='black',

##         transform=ax.transAxes)

## 
## # Labeling

## ax.set_axis_off()

## plt.show()

