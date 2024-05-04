
#load wrangling packages
library(tidyverse)
library(janitor)

#load data
df <- read_csv("/Users/ashleymullan/Documents/Grad School/Wake Forest/M.S. Coursework/Spring 2024/Deep Learning/675_final/weatherHistory.csv") #change path later

#fix names of variables
df <- df |> clean_names()

#extract hour of measurement
df$hour <- df |> pull(formatted_date) |> substring(12,13)

#filter to every six hours
df <- df |> filter(hour %in% c("00", "03", "06", "09", "12", "15", "18", "21")) 

#cut to columns we're using
df <- df[,3:11]

#one hot encode precip_type
ptf <- factor(df$precip_type)
ohe <- model.matrix(~ ptf - 1) |> as.data.frame()

#append one hot encoded precip_type to original data
df <- cbind(df, ohe)
df <- df[,-1]

#append measurement ID
n <- nrow(df)
df$id <- 1:n

#fix column names
colnames(df) <- c("temp_c", "apparent_temp_c", "humidity", "wind_speed_km_h", 
                  "wind_bearing_degrees", "visibility_km", "cloud_cover", "pressure_mb", 
                  "no_precip", "rain", "snow", "id")

#remove cloud cover (known to be all zero) and temp (correlated to app temp)
before <- df[,2:6]
after <- df[,8:12]
df <- cbind(before,after)

#inspect final correlation
df[,-10] |> cor() |> round(2) 

#check final dimensions
df |> dim()

#write to csv
clean_data <- write.csv(df, "/Users/ashleymullan/Documents/Grad School/Wake Forest/M.S. Coursework/Spring 2024/Deep Learning/675_final/clean_data.csv",
                        row.names = FALSE)

#note to user:
## end product is df, this is exported to an external CSV
## col "apparent_temp_c" is the response
## col "id" is the chronological id number of the measurement from 1 to nrow(df)
