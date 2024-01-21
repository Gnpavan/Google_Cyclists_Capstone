install.packages("tidyverse")

library(tidyverse)
library(readr)
library(lubridate)
library(hms)
library(data.table)

jan01_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202301-divvy-tripdata.csv")
feb02_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202302-divvy-tripdata.csv")
mar03_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202303-divvy-tripdata.csv")
apr04_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202304-divvy-tripdata.csv")
may05_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202305-divvy-tripdata.csv")
jun06_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202306-divvy-tripdata.csv")
jul07_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202307-divvy-tripdata.csv")
aug08_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202308-divvy-tripdata.csv")
sep09_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202309-divvy-tripdata.csv")
oct10_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202310-divvy-tripdata.csv")
nov11_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202311-divvy-tripdata.csv")
dec12_df <- read_csv("D:/IMP/Google Data Analytics/Capstone/CSV/202312-divvy-tripdata.csv")

#Combine all 12 months data sets into one
cyc_df <- rbind(jan01_df, feb02_df, mar03_df, apr04_df, may05_df, jun06_df, 
                jul07_df, aug08_df, sep09_df, oct10_df, nov11_df, dec12_df)

#remove 12 months data sets as we have it in cyc_df
remove(jan01_df, feb02_df, mar03_df, apr04_df, may05_df, jun06_df, 
       jul07_df, aug08_df, sep09_df, oct10_df, nov11_df, dec12_df)

#calculate ride length by subtracting ended_at time from started_at time and converted it to minutes
cyc_df$ride_length <- difftime(cyc_df$ended_at, cyc_df$started_at, units = "mins")

#create new data frame to contain new columns
cyclists_data <- cyc_df

#create columns for: day of week, month, day, year, time, hour

#default format is yyyy-mm-dd, use start date
cyclists_data$date <- as.Date(cyclists_data$started_at) 
#calculate the day of the week 
cyclists_data$day_of_week <- wday(cyc_df$started_at) 
#create column for day of week
cyclists_data$day_of_week <- format(as.Date(cyclists_data$date), "%A") 
#create column for month
cyclists_data$month <- format(as.Date(cyclists_data$date), "%m")
#create column for day
cyclists_data$day <- format(as.Date(cyclists_data$date), "%d")
#create column for year
cyclists_data$year <- format(as.Date(cyclists_data$date), "%Y") 
#format time as HH:MM:SS
cyclists_data$time <- format(as.Date(cyclists_data$date), "%H:%M:%S") 
#create new column for time
cyclists_data$time <- as_hms((cyc_df$started_at))
#create new column for hour
cyclists_data$hour <- hour(cyclists_data$time) 

#create column for different seasons: Spring, Summer, Fall, Winter
cyclists_data <-cyclists_data %>% mutate(season = 
                                             case_when(month == "03" ~ "Spring",
                                                       month == "04" ~ "Spring",
                                                       month == "05" ~ "Spring",
                                                       month == "06"  ~ "Summer",
                                                       month == "07"  ~ "Summer",
                                                       month == "08"  ~ "Summer",
                                                       month == "09" ~ "Fall",
                                                       month == "10" ~ "Fall",
                                                       month == "11" ~ "Fall",
                                                       month == "12" ~ "Winter",
                                                       month == "01" ~ "Winter",
                                                       month == "02" ~ "Winter")
)

#create column for different time_of_day: Night, Morning, Afternoon, Evening
cyclists_data <-cyclists_data %>% mutate(time_of_day = 
                                             case_when(hour == "0" ~ "Night",
                                                       hour == "1" ~ "Night",
                                                       hour == "2" ~ "Night",
                                                       hour == "3" ~ "Night",
                                                       hour == "4" ~ "Night",
                                                       hour == "5" ~ "Night",
                                                       hour == "6" ~ "Morning",
                                                       hour == "7" ~ "Morning",
                                                       hour == "8" ~ "Morning",
                                                       hour == "9" ~ "Morning",
                                                       hour == "10" ~ "Morning",
                                                       hour == "11" ~ "Morning",
                                                       hour == "12" ~ "Afternoon",
                                                       hour == "13" ~ "Afternoon",
                                                       hour == "14" ~ "Afternoon",
                                                       hour == "15" ~ "Afternoon",
                                                       hour == "16" ~ "Afternoon",
                                                       hour == "17" ~ "Afternoon",
                                                       hour == "18" ~ "Evening",
                                                       hour == "19" ~ "Evening",
                                                       hour == "20" ~ "Evening",
                                                       hour == "21" ~ "Night",
                                                       hour == "22" ~ "Night",
                                                       hour == "23" ~ "Night")
)

#create column for different type of day: Weekday, Weekend, Public Holiday
cyclists_data <-cyclists_data %>% mutate(tiype_of_day = 
                                           case_when(date == "2023-01-02" ~ "Public Holiday",
                                                     date == "2023-01-16" ~ "Public Holiday",
                                                     date == "2023-02-13" ~ "Public Holiday",
                                                     date == "2023-02-20" ~ "Public Holiday",
                                                     date == "2023-03-06" ~ "Public Holiday",
                                                     date == "2023-05-29" ~ "Public Holiday",
                                                     date == "2023-06-19" ~ "Public Holiday",
                                                     date == "2023-07-04" ~ "Public Holiday",
                                                     date == "2023-09-04" ~ "Public Holiday",
                                                     date == "2023-10-09" ~ "Public Holiday",
                                                     date == "2023-11-10" ~ "Public Holiday",
                                                     date == "2023-11-23" ~ "Public Holiday",
                                                     date == "2023-12-25" ~ "Public Holiday",
                                                     day_of_week == "Monday" ~ "Weekday",
                                                     day_of_week == "Tuesday" ~ "Weekday",
                                                     day_of_week == "Wednesday" ~ "Weekday",
                                                     day_of_week == "Thursday" ~ "Weekday",
                                                     day_of_week == "Friday" ~ "Weekday",
                                                     day_of_week == "Saturday" ~ "Weekend",
                                                     day_of_week == "Sunday" ~ "Weekend"
                                           )
)

#clean the data

#remove columns not needed: start_station_id, start_station_name, end_station_id, end_station_name, start_lat, start_long, end_lat, end_lng
cyclists_data <- cyclists_data %>%  
  select(-c(start_station_id, start_station_name, end_station_id, end_station_name, start_lat,start_lng,end_lat,end_lng)) 
#remove where ride_length is 0 or negative
cyclists_data <- cyclists_data[!(cyclists_data$ride_length <=0),] 
#remove duplicate rows 
cyclists_data <- distinct(cyclists_data)
#remove rows with NA values
cyclists_data <- na.omit(cyclists_data) 

#view the final data
View(cyclists_data)

#created a new data frame to use in Tableau or any other visualization tool
cyclists_cap <- cyclists_data

#download the new data as a .csv file
fwrite(cyclists_cap,"cyclists_data.csv")
