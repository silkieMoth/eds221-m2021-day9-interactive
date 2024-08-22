library(reprex)
library(tidyverse)
library(palmerpenguins)

# this should fetch an error
ggplot(data = penguins, aes(x = bill_length_mm)) %>% geom_point()

# were gonna make a reprex
# here's the code
datapasta::df_paste(head(penguins,5)[c("bill_length_mm", "flipper_length_mm")])

# this is what the above code generates
# it literally generates this line of code right here
my_df <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

#loading it back into ggplot
ggplot(data = my_df, 
       aes(x = bill_length_mm, y = flipper_length_mm)) %>% geom_point()

# we do this to make things smaller so we can share the error with others
# instead of sending people the whole as penguins data set we send them a couple small vectors

# lets try copy pasting from slack
my_data_slack <- data.frame(
  bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

ggplot(data = my_data, 
       aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()