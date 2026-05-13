Use Ola;

#Project_Question: 

-- 1. Retrieve all successful bookings:

Create View Successful_Bookings As
Select * From Bookings Where Booking_Status = 'Success';

Select * From Successful_Bookings; 

-- 2. Find the average ride distance for each vehicle type:

Create View Ride_Distance_for_Each_Vehicle As
Select Vehicle_Type, Avg(Ride_Distance) As
avg_distance From Bookings Group By Vehicle_Type;

Select * From Ride_Distance_for_Each_Vehicle;

-- 3. Get the total number of cancelled rides by customers:

Create View Total_Cancels_By_Customers As
Select Count(*) From Bookings Where Booking_Status = 'Canceled By Customer';

Select * From Total_Cancels_By_Customers;

-- 4. List the top 5 customers who booked the highest number of rides:

Create View Top_5_Customer As
Select Customer_ID, Count(Booking_ID) as total_rides 
From Bookings Group By Customer_ID 
Order By total_rides Desc Limit 5; 

Select * From Top_5_Customer;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

Create View Rider_Canceled_for_Personal_Issue As
Select Count(*) From Bookings 
Where Canceled_Rides_by_Driver = 'Personal & Car related issue';

Select * From Rider_Canceled_for_Personal_Issue;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

Create View Max_Min_Ratings_for_PrimeSedan As
Select Max(Driver_Ratings) as max_ratings, Min(Driver_Ratings) as min_ratings 
From Bookings Where Vehicle_Type = 'Prime Sedan';

Select * From Max_Min_Ratings_for_PrimeSedan;

-- 7. Retrieve all rides where payment was made using UPI:

Create View UPI_Payment As
Select * From Bookings Where Payment_Method = 'UPI';

Select * From UPI_Payment;

-- 8. Find the average customer rating per vehicle type:

Create View Avg_Customer_Ratings As
Select Vehicle_Type, Avg(Customer_Rating) As avg_customer_ratings 
From Bookings Group By Vehicle_Type;

Select * From Avg_Customer_Ratings;

-- 9. Calculate the total booking value of rides completed successfully:

Create View Total_Successful_Bookings As
Select Sum(Booking_Value) As total_Successful_bookings 
From Bookings Where Booking_Status = 'Success';

Select * From Total_Successful_Bookings;

-- 10. List all incomplete rides along with the reason:

Create View Incomplete_Ride As
Select Booking_ID, Incomplete_Rides_Reason 
From Bookings Where Incomplete_Rides = 'Yes';

Select * From Incomplete_Ride;