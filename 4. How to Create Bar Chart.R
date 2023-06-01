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
  1. created filtered data
  df_count_year <- df_fda  %>%
  filter(center_classification_year != 2023) %>% 
  group_by(center_classification_year) %>% 
  summarise(total_cases = n ())

Explanation :
df_count_year = variable
df_fda = dataframe that we used
%>% (pipe) = tools that passed output of one operation (from the most left) to the next operation (to the right)
filter = filtering the year, in this example we don't want year 2023
group_by = group the dataframe by column(center_classification_year)
summarise = summarizes the grouped dataframe before (remember pipe logic) by calculating the count of observation as n

  2. Creating the Advanced Chart
ggplot(df_count_year, aes(x = center_classification_year, y = total_cases)) +
  geom_col() +
  geom_text(aes(label = total_cases), vjust = -0.5) +
  labs(x = 'Year') +
  scale_x_continuous(breaks = seq(2012, 2022, by = 2), labels = c("2012", "2014", "2016", "2018", "2020", "2022")) +
  theme(axis.text.y = element_blank(), axis.title.y = element_blank())

Explanation :
ggplot (library we used)
df_count_year = our filtered year before, we save them as variable
aes = aesthetics
x = x.axis (column name)
y = y.axis (n from summarize before)
geom_col = type column
geom_text = add label in the chart
label = n(name)
vjust = position of label
labs x = x.axis label
scale_x_continuous(break = seq(2012,2022, by = 2) <- our formula for custom label, break by 2 year for each point, starting from 2012
labels = our new custom label
theme = function used to modify visual appearance of the plot (in this case we delete the y.axis)
