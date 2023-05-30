Example :

We have dataset with name fda_df, and column that we want to count the content is Event_Classification
  **1. class_count <- table(fda_df$Event_Classification)**
print(class_count)

Explanation:
class_count = variable name, table of Event_Classification is stored in here under this name
fda_df = our dataset name
$ = used to extract object component, we want to extract the content of Event_Classification column in here
Event_Classification  = Column name

  2. If we need to do visualisation and using ggplot
change table to dataframe with this:
df_class <- data.frame(rbind(class_count)
df_class

if we want to view them in tabular format, use this
View(df_class) << use V in capital because R is case incensitive

Explanation :
df_class = our variable that stores data.frame that we get from table class_count
rbind = function to concat or combine dataframe by rows
class_count = our previous table
