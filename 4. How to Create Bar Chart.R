library you need:
install.packages('ggplot2')
library(ggplot)
install.packages('dplyr')
library(dplyr)

Simple Bar Chart :
ggplot(data = dataframe) + geom_bar(mapping = aes(x = year))

Explanation :
dataframe = dataframe we use
geom_bar = the type of chart we want (this one is barchart)
mapping = aesthetics mapping specific to this layer only (geom_bar)
aes = visual properties of plot
year = column name

2. Another Simple Bar Chart:
ggplot(data = dataframe), aes(x = year)) + geom_bar()
this one is same but the difference is, aes applied globally for all layer because its inside ggplot not inside the geom_bar()

3. Advanced Bar Chart with Filter
