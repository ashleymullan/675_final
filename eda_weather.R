library(tidyverse)
df <- read_csv("/Users/ashleymullan/Downloads/weatherHistory.csv")
df |> View()

df |> 
  group_by(Summary) |>
  summarize(count = n()) |>
  arrange(desc(count)) #find top categories of summary

top_five <- c("Partly Cloudy", "Mostly Cloudy", "Overcast", "Clear", "Foggy")

df_tfc <- df |>
  filter(Summary %in% top_five) #filter to top five categories for summary columns

df_tfc |> pull(Summary) |> table() #check new distribution

df_tfc |> colnames()

df_tfc |> head() |> View()
