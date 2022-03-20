
The paper is based on the dataset of 2016 General Social Survey on Canadian at Home and Work from the University of Toronto Database CHASS. The dataset is provided by Statistics Canada under the terms of the Data Liberation Initiative (DLI). The dataset is provided for UofT students, faculty, staff of DLI member institutions, for researching and teaching only. For replication, you can download the data from https://sda-artsci-utoronto-ca.myaccess.library.utoronto.ca/cgi-bin/sda/hsda?harcsda4+gss30, by logging into your UofT account. 

Software Requirements:

R, The code was run with version 4.0.2

There are some packages that you should install before you run the code: tidyverse, dplyr, RMarkdown, bookdown, ggplot2, knitr, and tidytext.

Instructions:

1) Instead of using the whole data file, we used the customized subset to only select demographic and household composition derived variables; drinking; education highest degree block v.3. parts of the data file and download. You should see the file something like: AACos3du.csv

2) We imported the dataset in local with read_csv function and saved later with write_csv function. We used the select function to select the variables (CASEID, sex, agegr10, ehg3_01, drr_110). We applied rename function to rename “CASEID” as “id”, “agegr10” as “age”, “ehg3_01” as “edu”, “drr_110” as “drink”. The dataset was saved into a new data frame called df. Then we created another new data frame called df1 that we mutated the variables from double numbers into categorical as follows regarding the codebook.

3) We used ggplot2 to create the bar plots, where the x-axis would be each of the variables. And then we used the lm function to build the linear regression models. The response variable was alcohol consumption and the rest were explanatory variables. The results were displayed by knitr.