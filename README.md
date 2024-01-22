# **Google_Cyclists_Capstone**

## **Introduction**

In this case study, I’ll be performing many real-world tasks that a data analyst usually does in their day-to-day job. I’ll be working with a fictional company named Cyclist and answer key business questions, in order to do that I’ll be following the six-step data analysis process: ask, prepare, process, analyse, share and act.

## **Scenario**

I’m a junior data analyst working in the marketing analyst team at Cyclists, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. That being the case I need to understand how casual riders and annual members use Cyclists bikes differently. From these insights, I will design a new marketing strategy to convert casual riders into annual members. But first, Cyclists executives must approve my recommendations, so they must be backed up with compelling data insights and professional data visualizations, that I’ll do my best to provide below.

## **Phases**

### **Ask**

Our goal is to design marketing strategies aimed at converting casual riders into annual members, the next three questions will be a great guide to get there:

- How do annual members and casual riders use Cyclists bikes differently?
-	What would make casual riders buy a membership?
-	How can Cyclists use digital media to influence casual riders to become members?
  
To answer these questions, our marketing director is interested in analysing the Cyclists historical bike trip data to identify trends.

### **Prepare**

The data for this project consisted of 12 months of cyclist data from January to December 2023. Each month’s data was downloaded as a separate zipped CSV file. After unzipping the files, I converted them to .xls format for easier manipulation in Excel.

### **Process**

Upon initial inspection of the data, I noticed that four columns had a significant number of missing values. 
These columns were start_station_name, start_station_id, end_station_name, end_station_id , also there were another four columns start_lat, start_lng, end_lat, and end_lng. As these columns were not relevant to my analysis, I decided to remove them. The remaining columns in the dataset were:

1.	rider_id
2.	rideable_type
3.	started_at
4.	ended_at
5.	member_casual

### **Transform**

[**Excel, Power BI & R**](https://github.com/Gnpavan/Google_Cyclists_Capstone/blob/main/Capstone_Overview.pdf)

### **Analyse**

[**R**](https://github.com/Gnpavan/Google_Cyclists_Capstone/blob/main/Cyclists_Capstone_R_Code.R)

### **Share**

Due to limit on size of the file could not upload the Power BI Dashboard file below is the image of the same.
<img width="645" alt="image" src="https://github.com/Gnpavan/Google_Cyclists_Capstone/assets/89655397/04c0bb4a-861c-404e-854c-d2ce6c2658f2">

[**Tableau**](https://github.com/Gnpavan/Google_Cyclists_Capstone/blob/main/Cyclists_Capstone_Tableau_Dashboard.twb)

### **Act**

Below you will find a summary of my key findings. Based on the findings I will answer the questions that was initially made in the Ask phase.

**Key Findings**

-	Members had the bigger share of rides, amounting to a total of 63% of all rides.
-	The average ride length for annual members (12m53s) was less than half of the average ride length of casual riders (28m25s)
-	However, when talking about average ride length both members and casual riders tend to take longer rides on weekends.
-	Both members and casual riders use Cyclists more in the Afternoon, that time of the day amounts to 43.59% of all rides. The busiest hour turned out to be 16:00/4 PM for both members and casual riders, with 10% of all rides and the average ride lengths are more in the evenings and at the nights.
-	The busiest month for casual riders was July, as for members the busiest was actually August. The 3rd Quarter was the busiest, counting for 40.77% of all rides which was expected being that it includes most of the summer season.

**Suggestions**

- How do annual members and casual riders use Cyclists bikes differently?
  
Based on what was found casual riders tend to use Cyclists to make longer rides, the average ride length of casual riders (28 min) more than doubles the average ride length of annual members (13 min), which screams in the eyes of casual riders using Cyclists (buying a daily pass or single ride) “only” makes sense if they are going to take longer rides. This is supported by the fact that casual riders have a smaller percentage of the total rides (~37%), concluding that annual members use Cyclists with more freedom since they don’t have to be concerned with maximizing their rides, they can always take a short ride, stop and take another with no downside.

-	What would make casual riders buy a membership? 

It is observed that the average lengths are more on the weekends and public holidays for both casual with lesser rides suggests that they use bikes only as a medium of transport maybe roam around to have fun and members use it more often than not even on the weekdays shows that they use bikes to travel for their work or something like that, so annual memberships save a lot for people who use it for their office. To attract casual riders maybe give some discounts on the annual memberships also try tom increase the price for single and daily passes.

-	How can Cyclists use digital media to influence casual riders to become members? 

Investment in ads is needed. Advertising in platforms like Spotify, making an ad promoting the discounts suggested above in a platform like Spotify would gather a lot of annual membership. It is also suggested investing in ads on podcasts, YouTube content creators and twitter pages of which most of the fanbase is composed of bikers, YouTube channels about biking and exercise would be a good example. A Cyclists app with a personal profile that takes in consideration how each rider uses the company services and makes recommendations on how to maximize the potential of Cyclists is created. It should include the promotions available and the benefits of becoming an annual member.

### **Course Competion Certificate**

<img width="399" alt="image" src="https://github.com/Gnpavan/Google_Cyclists_Capstone/assets/89655397/857445c2-099b-4842-943d-e887a0eea5bb">


