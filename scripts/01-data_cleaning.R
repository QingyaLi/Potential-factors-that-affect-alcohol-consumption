raw_df <- read_csv("AACos3du.csv")

# cleaning process  
df <- raw_df %>% 
  select(CASEID, sex, agegr10, ehg3_01 , drr_110) %>% 
  rename(id = CASEID, 
         age = agegr10, 
         edu = ehg3_01,
         drink = drr_110) 
write_csv(df, "df.csv")

df1 <- df %>% 
  mutate(sex = case_when(sex == 1 ~ "male",
                         sex == 2 ~ "female",
                         sex == 6 ~ "valid skip",
                         sex == 7 ~ "don't know",
                         sex == 8 ~ "refusal",
                         sex == 9 ~ "not stated"),
         age = case_when(age == 1 ~ "15-24",
                         age == 2 ~ "25-34",
                         age == 3 ~ "35-44",
                         age == 4 ~ "45-54",
                         age == 5 ~ "55-64",
                         age == 6 ~ "65-74",
                         age == 7 ~ "75&over",
                         age== 96 ~ "valid skip",
                         age == 97 ~ "don't know",
                         age == 98 ~ "refusal",
                         age == 99 ~ "not stated"),
         edu = case_when(edu == 1 ~ "less than high school diploma",
                         edu == 2 ~ "high school diploma",
                         edu == 3 ~ "trade certificate",
                         edu == 4 ~ "college diploma",
                         edu == 5 ~ "university diploma below bachelor's degree",
                         edu == 6 ~ "bachelor's degree ",
                         edu == 7 ~ "university diploma above bachelor's degree",
                         edu == 96 ~ "valid skip",
                         edu == 97 ~ "don't know",
                         edu == 98 ~ "refusal",
                         edu == 99 ~ "not stated"),
         drink = case_when(drink == 1 ~ "everyday",
                           drink == 2 ~ "4-6 times a week",
                           drink == 3 ~ "2-3 times a week",
                           drink == 4 ~ "once a week",
                           drink == 5 ~ "once or twice in the past month",
                           drink == 6 ~ "not in the past month",
                           drink == 7 ~ "never drink",
                           drink == 96 ~ "valid skip",
                           drink == 97 ~ "don't know",
                           drink == 98 ~ "refusal",
                           drink == 99 ~ "not stated"))
write_csv(df1, "df1.csv")  



         