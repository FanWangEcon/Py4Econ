## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # Create the Tex Text

## # Note that trible quotes begin first and end last lines

## stf_tex_contents = """\

## - file: matrix_matlab

##   title: "One Variable Graphs and Tables"

##   description: |

##     Frequency table, bar chart and histogram.

##     R function and lapply to generate graphs/tables for different variables.

##   core:

##   - package: r

##     code: |

##       c('word1','word2')

##       function()

##       for (ctr in c(1,2)) {}

##   - package: dplyr

##     code: |

##       group_by()

##   date: 2020-05-02

##   output:

##     pdf_document:

##       pandoc_args: '../_output_kniti_pdf.yaml'

##       includes:

##         in_header: '../preamble.tex'

##   urlcolor: blue

## - file: matrix_algebra_rules

##   title: "Opening a Dataset"

##   titleshort: "Opening a Dataset"

##   description: |

##     Opening a Dataset.

##   core:

##   - package: r

##     code: |

##       setwd()

##   - package: readr

##     code: |

##       write_csv()

##   date: 2020-05-02

##   date_start: 2018-12-01

## - file: matrix_two

##   title: "Third file"

##   titleshort: "Third file"

##   description: |

##     Third file description."""

## # Print

## print(stf_tex_contents)


## # Relative file name

## srt_file_tex = "_file/"

## sna_file_tex = "test_yml_fan"

## srn_file_tex = srt_file_tex + sna_file_tex + ".yml"

## # Open new file

## fl_tex_contents = open(srn_file_tex, 'w')

## # Write to File

## fl_tex_contents.write(stf_tex_contents)

## # print

## fl_tex_contents.close()


## import yaml

## import pprint

## # Open yaml file

## fl_yaml = open(srn_file_tex)

## # load yaml

## ls_dict_yml = yaml.load(fl_yaml, Loader=yaml.BaseLoader)

## # type

## type(ls_dict_yml)

## type(ls_dict_yml[0])

## # display

## pprint.pprint(ls_dict_yml, width=1)


## ls_str_file_ids = ['matrix_two']

## ls_dict_selected = [dict_yml for dict_yml in ls_dict_yml if dict_yml['file'] in ls_str_file_ids]

## pprint.pprint(ls_dc_selected, width=1)


## ls_dict_selected = [dict_yml for dict_yml in ls_dict_yml

##                     if dict_yml['file'] in ['matrix_two','matrix_matlab']]

## print(yaml.dump(ls_dict_selected))

