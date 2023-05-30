Pie chart is type chart when we want to know the percentage as a whole
  1. we need to counts for each specific categorical, you can read in this github too : How to Count Categorical Variable from Specific Column
  2. We create factor with vector based on the data that we got in counting categorical data before
  In R, factor() is a function used to create a categorical or factor variable from a vector. 

For example :
counts_events_class <- factor(c(rep("Class.I",17121),
                                rep("Class.II",59049),
                                rep("Class.III",6985)))
events_class <- data.frame(counts_events_class)
cols <- hcl.colors(length(levels(counts_events_class)), "Fall")
PieChart(counts_events_class, data = events_class, hole = 0.3, fill = cols, labels_cex = 0.6)

Explanation :
counts_events_class = variable name for factor
events_class = variable name for our new dataframe based on counts_event_class
cols = Colors for PieChart, "Fall" is palette
(PieChart) data = our dataframe, hole = you want hole or not in PieChart? (Value 0-1), fill = our pie chart colors filled by, labels_cex = our labels, higher is more bigger
