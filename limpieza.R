library(tidyverse)
library(rio)
# data.frame(
#   var1 = rnorm(10000),
#   var2 = rnorm(10000),
#   var3 = rnorm(10000),
#   var4 = rnorm(10000),
#   var5 = rnorm(10000),
#   var6 = rnorm(10000)
# ) %>% saveRDS("data/data-raw/datos.rds")
seed = as.numeric(Sys.time())
set.seed(seed)
readRDS("data/data-raw/datos.rds")[rbinom(n = 10000, prob = 0.01, 1) == T, ] %>%
  mutate(semilla = seed) %>% 
  export("data/data-processed/muestra_ejercicio1.xlsx")