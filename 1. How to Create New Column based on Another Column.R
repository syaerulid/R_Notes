  1. We create data that we want to obtain
For example: we want to extract Day of the Week, from date column
we write like this:
wday(fda_df$date, week_start = 1)

Explanation :
(wday = week from the day
fda_df = dataframe name
week_start = 1, Week start from Monday)

  2. Create New Column with NULL VALUES
we write like this:
fda_df$day_of_the_week <- NULL

Explanation:
day_of_the_week = name of the new column

  3. Append / Insert the value of data that we obtain to our new column that have NULL Values
fda_df$day_of_the_week <- (fda_df$date, week_start = 1)
Explanation :
left side = our new column
right side = data that we obtain based on another column
