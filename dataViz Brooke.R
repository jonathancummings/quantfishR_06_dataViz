library(tidyverse)
library(skimr) # assists with summarizing ('skimming') your data

em_data<-read_csv("data/emevtr2017.csv",guess_max = 16000)

skim(em_data)

unique(em_data$SpeciesName)

ggplot(top_n(em_data,25),aes(SpeciesName))+geom_bar()
ggplot(em_data,aes(vtrDISCWEIGHT))+geom_histogram()

ggplot()

ggplot(em_data)

ggplot(em_data,aes(vtrDISCWEIGHT))

ggplot(em_data,aes(vtrDISCWEIGHT,emDISCCOUNT))

ggplot(em_data,aes(vtrDISCWEIGHT,emDISCCOUNT)) + geom_point()

ggplot(em_data,aes(vtrDISCWEIGHT)) + geom_point()
ggplot(em_data,aes(vtrDISCWEIGHT,emDISCCOUNT)) + geom_histogram()

ggplot(em_data,aes(vtrDISCWEIGHT,emDISCCOUNT)) + geom_jitter()

ggplot(em_data,aes(vtrDISCWEIGHT,emDISCCOUNT)) +
  geom_point() + geom_smooth(method=lm) + geom_rug()
