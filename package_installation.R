aux_packages<-c("tidyverse", "gdata", "ggmap","ggplot2","gridExtra","ISOweek",
            "lubridate","maps","MASS","memisc","pander","plyr","psych",
            "Quandl","quantmod","reshape2","rgeos","RODBC","scales",
            "sp","sqldf","stringi","stringr","XLConnect")   # here, you only need to add a vector of all the libraries you want to install. 


aux_install<-aux_packages[!aux_packages %in% installed.packages()]   # you check which of those packages you already have installed
sapply(aux_install, install.packages, dependencies=TRUE)             # you install those packages that are missing
sapply(aux_packages,require,character=TRUE)                          # you load them to use them