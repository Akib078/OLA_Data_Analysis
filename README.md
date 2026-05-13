<h1>OLA</h1>
<h2>Data Analyst Project</h2>

<h3>Overview:</h3> 

This project aims to data analysis using Excel and SQL on OLA (July Month’s) dataset and generate reports using Microsoft Power BI. 


<h3>Tools Used:</h3> 

•	Microsoft Power BI 
•	Microsoft Excel 
•	MySQL Workbench
•	SQL
•	Microsoft PowerPoint  
 
<h3>SQL Questions:</h3>

1.	Retrieve all successful bookings:
2.	Find the average ride distance for each vehicle type:
3.	Get the total number of cancelled rides by customers:
4.	List the top 5 customers who booked the highest number of rides:
5.	Get the number of rides cancelled by drivers due to personal and car-related issues:
6.	Find the maximum and minimum driver ratings for Prime Sedan bookings:
7.	Retrieve all rides where payment was made using UPI:
8.	Find the average customer rating per vehicle type:
9.	Calculate the total booking value of rides completed successfully:
10.	List all incomplete rides along with the reason:

<h3>Power BI Questions:</h3>

1.	Overall
-	Ride Volume Over Time
-	Booking Status Breakdown
2.	Vehicle Type
	-	Top 5 Vehicle Types by Ride Distance
3.	Revenue
-	Revenue by Payment Method
-	Top 5 Customers by Total Booking Value
-	Ride Distance Distribution Per Day
4.	Cancellation
-	Cancelled Rides Reasons (Customer)
-	cancelled Rides Reasons (Drivers)
5.	Ratings
-	Driver Ratings
-	Customer Ratings



<h3>Data Columns</h3>
1.	Date
2.	Time
3.	Booking_ID
4.	Booking_Status
5.	Customer_ID
6.	Vehicle_Type
7.	Pickup_Location
8.	Drop_Location
9.	V_TAT	10.	C_TAT
11.	cancelled_Rides_by_Customer
12.	cancelled_Rides_by_Driver
13.	Incomplete_Rides
14.	Incomplete_Rides_Reason
15.	Booking_Value
16.	Payment_Method
17.	Ride_Distance
18.	Driver_Ratings
19.	Customer_Rating

<h3>Power BI Reports:</h3>
<img width="828" height="477" alt="Image" src="https://github.com/user-attachments/assets/a3ebe937-f7af-4af2-88a0-6a679ea5f4c0" />
<img width="4150" height="2400" alt="Image" src="https://github.com/user-attachments/assets/ebe44f81-d282-4102-ac7b-d929936e984d" />
<img width="4150" height="2400" alt="Image" src="https://github.com/user-attachments/assets/9517a447-e892-4177-8db3-e33888e03933" />
<img width="4150" height="2400" alt="Image" src="https://github.com/user-attachments/assets/454bab7e-3f8c-4663-a989-1a32272c834c" />
<img width="4150" height="2400" alt="Image" src="https://github.com/user-attachments/assets/12a2b085-9d46-4ced-b9cd-e91a5802ff16" />

<h3>SQL Answers:</h3>

1.	Retrieve all successful bookings:
SELECT * FROM bookings WHERE Booking_Status = 'Success';
2.	Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY Vehicle_Type;
3.	Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'cancelled by Customer';
4.	List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY
Customer_ID ORDER BY total_rides DESC LIMIT 5;
5.	Get the number of rides cancelled by drivers due to personal and car-related issues: SELECT COUNT(*) FROM bookings WHERE cancelled_Rides_by_Driver = 'Personal & Car
related issue';
6.	Find the maximum and minimum driver ratings for Prime Sedan bookings: SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM bookings WHERE Vehicle_Type = 'Prime Sedan';
7.	Retrieve all rides where payment was made using UPI: SELECT * FROM bookings WHERE Payment_Method = 'UPI';
8.	Find the average customer rating per vehicle type:
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings
GROUP BY Vehicle_Type;
9.	Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
Booking_Status = 'Success';
10.	List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
'Yes';
10. Customer vs. Driver Ratings: A scatter plot comparing customer and driver ratings for each completed ride, analyzing correlations.

