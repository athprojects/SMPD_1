# ----------------------------------------
# ranking some washing machine
# data source where taken from http://www.euro.com.pl

# the separation threshold
epsilon <-0.01

# the performance table
performanceTable <- rbind(
c(1, 9, 1400, 2649),
c(0, 7, 1200, 1299),
c(1, 6, 1000, 899),
c(0, 6, 1200, 1049),
c(1, 13, 1400, 2699),
c(1, 6.5, 1200, 1599),
c(1, 5, 1000, 799),
c(1, 5, 1000, 799),
c(1, 7, 1200, 1299),
c(1, 5, 1200, 1299),
c(1, 6, 1000, 1099),
c(1, 6, 1200, 1549),
c(0, 5, 1000, 899),
c(1, 6, 1200, 899),
c(1, 6, 1200, 1099),
c(1, 6, 1000, 999),
c(1, 6, 1200, 1349),
c(1, 6, 1000, 799),
c(1, 6, 1000, 1249),
c(1, 6, 1200, 1799))

rownames(performanceTable) <- c(
"Samsung Addwash WW90K6414QW",
"Whirlpool TDLR 70210",
"Candy Smart CS4 1061D3",
"Indesit ITWD 61252 G (PL)",
"Hoover DMP 413AH",
"Bosch Serie 6 VarioPerfect WLT24460PL",
"Indesit IWSC 51052 C ECO PL",
"Amica AWB510L",
"Samsung WF70F5E0W2W",
"Bosch Serie 4 VarioPerfect WLG2426KPL",
"Bosch Serie 2 VarioPerfect WAB20264PL",
"Electrolux EWS1266CI",
"Indesit ITWA 51052 W (EU)",
"Indesit IWSC 61253 C ECO EU",
"Samsung WW60J3283LW",
"Whirlpool AWO/C 61003P",
"Bosch Serie 6 VarioPerfect WLK2427EPL",
"Indesit Eco Time IWD 61052 C ECO PL",
"Electrolux EWS11064SDU",
"Samsung AddWash Slim WW60K42138W"
)

colnames(performanceTable) <- c(
"Is front load washer",
"Capcity (kg)",
"Spin speed (rpm)",
"Price (PLN)"
)

# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
names(alternativesRanks) <- row.names(performanceTable)

# criteria to minimize or maximize
criteriaMinMax <- c("max","max","max","min")
names(criteriaMinMax) <- colnames(performanceTable)
x<-additiveValueFunctionElicitation(performanceTable, criteriaMinMax, epsilon, alternativesRanks = alternativesRanks)
x