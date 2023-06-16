# Import your libraries
library(dplyr)

# Start writing code
head(yelp_business)

r_grup <- yelp_business %>%
    group_by(name, review_count) %>%
    select(name, review_count)

reorder_grup <- r_grup %>%
    arrange(desc(review_count))
    
head(reorder_grup, n = 5)

Code Breakdown:
  yelp_business = nama dataframe
  r_grup = nama variable group by
  group_by = gruping dataframe
  select = hanya memilih kolom tertentu untuk ditampilkan
  arrange = reorder grup, disini berdasarkan value terbesar (desc)
  
