#install the required datasets
#install.packages("arules")
#install.packages("arulesViz")

#a.Load required R libraries : arules and arulesViz
library("arules")
library("arulesViz")

data(Groceries)

#b.Apply apriori algorithm and mine the frequent itemsets and association rules
rules <- apriori(Groceries,parameter = list(supp = 0.01, conf = 0.2))

#c.Displays the first 10 strong association rules
inspect(rules[1])

#d.Plot the 20 items with highest item frequency
arules::itemFrequencyPlot(Groceries, topN = 20,main = '20 highest frequency items',
type = "absolute",ylab = "Item Frequency (Relative)")

