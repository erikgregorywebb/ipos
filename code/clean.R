library(tidyverse)
library(tidytext)

# import
setwd("~/Files/6 - Personal/Projects/ipos")
ipo = read_csv('ipo-filings.csv') 
glimpse(ipo)

# unnest/seperate
ipos2 = ipo %>% separate_rows(UWRITERS, sep = ', ')
write_csv(ipos2, 'ipo-filings-expanded.csv')
