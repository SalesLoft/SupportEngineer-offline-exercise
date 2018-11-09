# Support Engineer offline excercise

Hello #{insert awesome candidate name here}!

This is the SupportEngineer (now on SE) offline exercise. This test includes three sections which will help us to get a better understanding of your current knowledge or ability to research for the following topics:

1. Database architecture
2. SQL Queries
3. Web applications

We also suggest you read the whole README before starting (don't worry, it will only take 5 minutes)

### Part 1 - Design a database (expected duration 1h)

SalesLoft is a sales engagement application, a place to organize your prospects and the way you engage with them.  

* SalesLoft has many customers identified as teams.
* A team has users based on the number of licenses purchased.
* Each team can import people and their related companies into SalesLoft.
* Once a user imports people and companies, they can start the sales process of sending emails or making calls through the application.
* Calls and emails can be grouped into cadences.
* A cadence is a series of steps on different days (email or phone calls) composed together (Step 1 Email, Step 2 Call, Step 3 Email, Step 4 Email).
* An email step can be automated to be sent manually or at a specific time of day.
* Different emails can be sent from the same email template. A template can belong to a user or to the team.
* A person can belong to a user.
* A cadence can belong to a user or to the team.

Based on these information, try to design the [ERD](https://www.lucidchart.com/pages/er-diagrams) representing the data architecture of the SalesLoft application, explaining your design choices.

The ERD can be designed using any tool you prefer; https://www.draw.io/ is a free and useful tool for the goal. Paper, pencil and a picture works as well!

### Part 2 - The SQL Hunt! (expected duration 1h - 1,5h)

An important part of the SE toolbox is the ability to effectively navigate a SQL database, specifically Postgres. In this exercise, you will have to fetch data according to the instructions.

1. Clone this repo `git clone git@github.com:SalesLoft/SupportEngineer-offline-excercise.git`
2. `cd` into `SupportEngineer-offline-excercise`
3. Setup the database `rails db:setup`

Based on the records contained in the database, answer to the following questions. You can use either the Rails Console with ActiveRecord or Postgres console and pure SQL. You can even import our database in another application of your choice, running the command `rake db:dump format=sql` it will create a .sql file and you will be able to import in any sql database!

Don't forget to attach the queries to your responses.

1. Find the country with the highest number of engineers.
2. Find the team with the highest number of engineers, but also the smallest number of bugs.
3. Find the oldest engineer who has the most repositories written in functional programming.
4. Find the second least-represented region in among the teams.
5. Find who published the book with the highest average rating.
6. Find the capital of the country where the oldest person in the team that shipped the most features comes from.
7. Find the inventor of 3rd most used programming language by the team on the most crowded floor.
8. Find the book least read by the engineers who develop in Ruby.

### Part 3 - Just code! (expected duration 3h - 8h)

In this last part you will submit a full stack application with two features:

1. Show a list of People records that are available via the [SalesLoft API](https://developers.salesloft.com/api.html#!/People/get_v2_people_json) using the API key in the email you received. Display each Person’s name, email address, and job title.
2. Create a button that, when clicked, displays a frequency count of all the **unique** characters in all the email addresses of all the People you have access to, sorted by frequency count.

|Character|Count|
|-|-|
|M|7|
|R|5|
|S|2|

In SalesLoft we love building quality software and we like to write code other people enjoy to work with. For this reason, we will provide you the elements we consider important:

* Usability. Having a working application is the first step, right?
* Deployment. It would be cool to use the application in the cloud!
* Documentation. Instructions are important and also the reason behind your development choices.
* Data persistence. We work A LOT with databases and we want to make sure data stays where we want to be.
* Test. A test written today are 10 bugs will not pop up tomorrow!
* Git. Commit soon, commit often, branches make cooperative work way easier.
* Readability. Code should be written for other people to work on: names, indentation, spaces. Everything matter.
* Frontend frameworks. Do you any know of the numerous frameworks out there?
* Development principles. There are different ways to write code. The important thing is doing it deliberately.

Remember, what you learn during these exercises is more important than what you knew before starting!

If you have any question email us at engineeringjobs@salesloft.com

Good Luck!

The SaleLoft Team
