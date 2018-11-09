# Support Engineer offline excercise

Hello #{insert awesome candidate name here}!

This is the SupportEngineer (now on SE) offline exercise. This test includes three sections which will help us to get a better understanding of your current knowledge or ability to research for the following topics:

1. Database architecture
2. SQL Queries
3. Web applications

We also suggest you to read the whole README before starting (don't worry it will only take 5 minutes)

### Part 1 - Design a database (expected duration 1h)

SalesLoft is a sales engagement application, a place to organize your prospects and the way you engage with them.  

* SalesLoft has many customers identified as teams.
* A team can add several numbers of users based on the number of licenses purchased.
* Each team can import people and their related companies in SalesLoft.
* Once a user imported prospects and companies, then can start the sale process of sending emails or making calls through the application.
* Calls and emails can be grouped in cadences.
* A cadence is a series of steps on different days (email or phone calls) composed together (Step 1 Email, Step 2 Call, Step 3 Email, Step 4 Email).
* An email step can be automated to be sent at a specific time of day or be sent manually.
* Different emails can be sent out from the same email template. A template can belong to a user or to the team.
* A person can belong to a user
* A cadence can belong to a user or to the team

Based on these information, try to design the [ERD](https://www.lucidchart.com/pages/er-diagrams) representing the data architecture of the SalesLoft application, explaining your design choices.

The ERD can be designed using any tool you prefer, https://www.draw.io/ is a free and useful tool for the goal. Paper, pencil and a picture works as well! 

### Part 2 - The SQL Hunt! (expected duration 1h - 1,5h)

An important part of the SE toolbox is the ability to effectively navigate a SQL database, specifically Postgres, in this exercise you will have to fetch according to our indications.

1. Clone this repo `git clone git@github.com:SalesLoft/SupportEngineer-offline-excercise.git`
2. `cd` into `SupportEngineer-offline-excercise`
3. Setup the database `rails db:setup`

Based on the records contained in the database answer to the following questions. You can use either the Rails Console with ActiveRecord or Postgres console and pure SQL. You can even import our database in an other application of you preference, running the command `rake db:dump format=sql` it will created a .sql file and you will be able to import in any sql database!

Don't forget to attach the queries to your responses.

1. Find the country with the highest number of engineers
2. Find the three team with the highest number of engineers and order it by the number of bugs, bigger first.
3. Find the oldest engineer which has the most repositories written in functional programming
4. Find the second region less represented in within the teams
5. Find who published the book with the highest average rating 
6. Find the capital of the country where the oldest person in the team that shipped the most features come from.
7. Find the inventor of 3rd most used programming language by the teams on the most crowded floor
8. Find the book least read by the the engineers who develop in Ruby

### Part 3 - Just code! (expected duration 3h - 8h)

In this last part you will submit a full stack application with two features:

1. Show a list of People records that are available via the [SalesLoft API](https://developers.salesloft.com/api.html#!/People/get_v2_people_json) using the API key in the email you received. Display each Person’s name, email address, and job title.
2. Create a button that, when clicked, displays a frequency count of all the **unique** characters in all the email addresses of all the People you have access to, sorted by frequency count.

|Character|Count|
|-|-|
|M|7|
|R|5|
|S|2|

In SalesLoft we love build quality software and we like to write code other people enjoy to work with, for this reason we will provide you the elements we consider important:

* Usability. Having a working application is the first step correct?
* Deployment. Would be cool using the application in the cloud!
* Documentation. Instructions are important and also the reason behind your development choices.
* Data persistence. We works A LOT with databases and we want to make sure data stays where we want to be.
* Test. A test written today are 10 bugs will not pop up tomorrow!
* Git. Commit soon, commit often, branches make cooperative work way easier.
* Readability. Code should be written for other people to work on: names, indentation, spaces. Everything matter.
* Frontend frameworks. By any chance do you know any of the 19287468342 frameworks out there?
* Development principles. There are different ways to write code, the important thing is doing it deliberately

Remember, what you learned during those exercises are more important than what you knew before starting!

If you have any question write us at engineeringjobs@salesloft.com

Good Luck

The SaleLoft team.
