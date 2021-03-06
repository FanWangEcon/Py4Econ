## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np


## stf_txt_contents_regq = """

## # Quantile Regression Estimates

## 
## > \\toprule

## 
## > & \multicolumn{5}{l}{Estimates at conditional quantiles}\\\\

## > \cmidrule(l{5pt}r{5pt}){2-6}

## > Variable & P10 & P25 & P50 & P75 & P90\\\\

## 
## > \midrule

## ## Environmental Exposure Variables

## # PM10

## -33.633***, -21.757***, -17.121***, -12.970***, -15.747***

## (3.305), (2.396), (1.862), (2.223), (2.663)

## # Extreme hot

## -50.202**, -32.292**, -30.162***, -28.485**, -30.271*

## (21.322), (13.677), (10.892), (12.193), (16.258)

## 
## ## Education and Environmental Exposure Interactions

## # College completion

## -252.719***, -133.758**, -26.323, -70.733, -39.212

## (80.041), (54.355), (47.235), (58.473), (80.659)

## # College x PM10

## 3.858***, 2.153***, 0.705, 1.072, 0.684

## (1.065), (0.704), (0.592), (0.758), (1.049)

## # College x extreme hot

## 9.134, 2.405, -10.92, -8.465, -7.021

## (14.246), (8.026), (8.823), (8.392), (11.379)

## 
## ## Control Variables

## # Male

## 84.506***, 91.758***, 107.950***, 115.879***, 133.560***

## (7.796), (4.848), (4.111), (5.044), (6.961)

## # Mother's age

## 68.180***, 47.921***, 47.127***, 51.366***, 41.764***

## (8.986), (5.368), (4.995), (5.099), (8.637)

## 
## ##> Intercept

## 1180.908***, 1434.431***, 1891.264***, 1923.296***, 2460.865***

## (327.266), (253.204), (239.577), (244.979), (333.483)

## 
## > \midrule

## 
## > $R(p)$ & MISSING & MISSING & MISSING & MISSING & MISSING\\\\

## 
## > \\bottomrule

## """

## # Relative file name

## srt_regq_txt = "_file/"

## sna_regq_txt = "test_regquant_fan"

## srn_regq_txt = srt_regq_txt + sna_regq_txt + ".txt"

## srn_regq_tex = srt_regq_txt + sna_regq_txt + ".tex"

## # Open new file

## fl_txt_contents_regq = open(srn_regq_txt, 'w')

## # Write to File

## fl_txt_contents_regq.write(stf_txt_contents_regq)

## fl_txt_contents_regq.close()


## print(stf_txt_contents_regq.split("\n"))


## # Define columns and width

## it_col_count = 6

## fl_adj_box_maxwidth = 1

## # Define format decimal

## it_round_decimal = 2

## # formatting width

## fl_col_label_width_cm = 5

## fl_col_coef_width_cm = 2

## # Indentation

## fl_indent_pound1_mm = 0

## fl_indent_pound2_mm = 0

## fl_indent_pound3_mm = 6


## fl_txt_regq_contents = open(srn_regq_txt)

## ls_st_txt_regq_contents = fl_txt_regq_contents.readlines()

## fl_txt_regq_contents.close()

## print(ls_st_txt_regq_contents)


## # Return list

## ls_st_tex_returns = []

## # Parse lines one by one

## for st_txt_regq_line in ls_st_txt_regq_contents:

## 
##     # delete linebreak at end of line

##     st_txt_regq_line = st_txt_regq_line.replace("\n", "")

## 
##     # Check start of line for special characters

##     st_N2_char = st_txt_regq_line[0:2]

##     st_N3_char = st_txt_regq_line[0:3]

##     st_N4_char = st_txt_regq_line[0:4]

## 
##     # Conditional processing

##     st_text_out = ''

##     if st_N4_char == '# ':

##         # Variable heading, with 3rd level indent, to be connected with coefficients etc

##         st_txt_regq_line = st_txt_regq_line.replace("# ", "")

##         st_text_out = "\hspace*{" + str(fl_indent_pound3_mm) + "mm}" + st_txt_regq_line

##     elif st_N4_char == '##> ':

##         # Variable heading, with 2nd level indent, to be connected with coefficients etc

##         st_txt_regq_line = st_txt_regq_line.replace("##> ", "")

##         st_text_out = "\hspace*{" + str(fl_indent_pound2_mm) + "mm}" + st_txt_regq_line

##     elif st_N3_char == '## ':

##         # Group of Coefficients

##         st_txt_regq_line = st_txt_regq_line.replace("## ", "")

##         st_text_out = "\\addlinespace\n"

##         st_text_out = st_text_out + "\multicolumn{" + str(it_col_count) + "}{l}{\hspace*{" + str(fl_indent_pound2_mm) + "mm}" +  st_txt_regq_line + "}\\\\\n"

##         st_text_out = st_text_out + '\\addlinespace\n'

##     elif st_N2_char == '# ':

##         # title line and initialize file lines

##         st_txt_regq_line = st_txt_regq_line.replace("# ", "")

##         st_text_out = st_text_out + "\\begin{table}[htbp]\n"

##         st_text_out = st_text_out +  "\centering\n"

##         st_text_out = st_text_out + "\caption{\hspace*{" + str(fl_indent_pound1_mm) + "mm}" + st_txt_regq_line + "}\n"

##         st_text_out = st_text_out + "\\begin{adjustbox}{max width=" + str(fl_adj_box_maxwidth) + "\\textwidth}\n"

##         st_text_out = st_text_out + \

##                       "\\begin{tabular}{m{" + str(fl_col_label_width_cm) + "cm}" \

##                       "*{" + str(it_col_count-1) + "}{>{\centering\\arraybackslash}" \

##                       "m{" + str(fl_col_coef_width_cm) + "cm}}}\n"

## 

##     elif st_N2_char == '> ':

##         # latex code line, include as it appears

##         st_txt_regq_line = st_txt_regq_line.replace("> ", "")

##         st_text_out = st_txt_regq_line + "\n"

##     else:

##         # Assume no headline/code row is comma separated

##         ls_st_estimates = st_txt_regq_line.split(",")

## 

##         # Loop over each value separated by commas

##         for it_esti_ctr, st_esti in enumerate(ls_st_estimates):

## 
##             # Default update is to keep current

##             st_esti_update = st_esti

## 
##             # If estimates, might have stars, first check star count

##             # delete stars, for numeric conversion and rounding

##             it_star_count = np.nan

##             if "***" in st_esti:

##                 it_star_count = 3

##                 st_esti = st_esti.replace("***", "")

##             elif "**" in st_esti:

##                 it_star_count = 2

##                 st_esti = st_esti.replace("**", "")

##             elif "*" in st_esti:

##                 it_star_count = 1

##                 st_esti = st_esti.replace("*", "")

##             else:

##                 it_star_count = 0

## 
##             # Check if has brakcets

##             it_bracket_count = np.nan

##             if "(" in st_esti:

##                 it_bracket_count = 1

##                 st_esti = st_esti.replace("(", "")

##                 if ")" in st_esti:

##                     it_bracket_count = 2

##                     st_esti = st_esti.replace(")", "")

## 
##             # Decimal Rounding

##             try:

##                 # numerical

##                 fl_esti_rounded = round(float(st_esti), it_round_decimal)

##                 fl_esti_rounded = f'{fl_esti_rounded:.{it_round_decimal}f}'

##                 st_esti_rounded = str(fl_esti_rounded)

##             except Exception:

##                 # Might be non-numeric

##                 st_esti_rounded = st_esti

## 
##             # Conditional Processing for Point Estimates and SE

##             if it_bracket_count is np.nan:

## 
##                 # A. No brackets, these are point estimates

##                 # Convert Estimate

##                 st_esti_starred = st_esti_rounded

##                 if it_star_count == 3:

##                     st_esti_starred = st_esti_rounded + "\sym{***}"

##                 elif it_star_count == 2:

##                     st_esti_starred = st_esti_rounded + "\sym{**}"

##                 elif it_star_count == 1:

##                     st_esti_starred = st_esti_rounded + "\sym{*}"

## 
##                 st_esti_update = st_esti_starred

## 
##             else:

##                 # B. brackets, these are standard errors

## 
##                 if it_bracket_count == 2:

##                     st_esti_update = "(" + st_esti_rounded + ")"

##                 else:

##                     raise TypeError(f'{ls_st_estimates=} and {st_esti=}, missing bracket')

## 
##             # Update List

##             ls_st_estimates[it_esti_ctr] = st_esti_update

## 
##         # Flatten comman

##         st_text_out = ' & '.join(ls_st_estimates)

##         if len(st_text_out) > 0:

##             # add ampersand front

##             st_text_out =  ' & ' + st_text_out + '\\\\\n\\addlinespace\n'

## 
##         # st_text_out = st_txt_regq_line

##         # st_text_out = st_text_out.replace("***", "\sym{+++}")

##         # st_text_out = st_text_out.replace("**", "\sym{==}")

##         # st_text_out = st_text_out.replace("*", "\sym{*}")

##         # st_text_out = st_text_out.replace("\sym{==}", "\sym{**}")

##         # st_text_out = st_text_out.replace("\sym{+++}", "\sym{***}")

## 
##     if len(st_text_out) > 0:

##         ls_st_tex_returns.append(st_text_out)

## 
## # close connection

## ls_st_tex_returns.append("\end{tabular}\n")

## ls_st_tex_returns.append("\end{adjustbox}\n")

## ls_st_tex_returns.append("\end{table}\n")


## # Open tex file

## fl_tex = open(srn_regq_tex, "w")

## # Read list of strings line by line and write to tex

## for st_tex_return in ls_st_tex_returns:

##     fl_tex.write(st_tex_return)

## # close tex file

## fl_tex.close()


## # load latex file and print

## fl_tex_regq_contents = open(srn_regq_tex)

## st_txt_regq_contents = fl_tex_regq_contents.read()

## fl_txt_regq_contents.close()

## print(st_txt_regq_contents)

