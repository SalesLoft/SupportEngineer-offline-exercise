# Support Software Engineer (jr developer) offline excercise

Hello #{insert awesome candidate name here}!
This exercise includes three sections that will help us gain a better understanding of your knowledge and ability to research the following topics:

- Data models
- SQL queries
- Web applications

> Please read this entire README before starting (don't worry, it will only take 5 minutes).

## Table of Contents

- [Part 1 - database design](#1-design-a-database-1-hour)
- [Part 2 - sql hunt](#2-the-sql-hunt-15-hours)
- [Part 3 - simple web app](#3-build-a-simple-web-app-3-to-8-hours)

### 1. Design a database (~1 hour)

SalesLoft is a sales engagement application, allowing its users to reach customers faster and more effectively.

- Each SalesLoft user belongs to a team.
- A team has users based on the number of licenses purchased.
- A user can add people to SalesLoft.
- A user can add companies to SalesLoft.
- A person can belong to a Salesloft user.
- People can belong to a company.
- A team or user can create a cadence. What's a cadence? A cadence is a sequence of "steps" such as a phone call step and email step that a team can use for certain customers.
- In other words, a cadence can include people, phone call and email steps.
- A user can pick the day a step will run.
- An email step can be manually ran.
- But sometimes users want an email step to run automatically, meaning that if a person is on that step they will receive the email without the user having to hit send.

TODO: Based on this information, draw an Entity Relationship Diagram [ERD](https://www.lucidchart.com/pages/er-diagrams) representing the relationships between our data in the SalesLoft app. Please note down your design choices. Your ERD can be designed using any tool you prefer. https://www.draw.io/ is a free and useful tool. Paper and pencil and a picture of your ERD sketch works as well!

### 2. The SQL Hunt! (~1.5 hours)

As a software support engineer, you'll need to effectively navigate a SQL database, specifically PostgreSQL. In this exercise, you will have to fetch data according to the instructions.

1. Clone this repo `git clone git@github.com:SalesLoft/SupportEngineer-offline-excercise.git`
2. `cd` into `SupportEngineer-offline-excercise`
3. Type `bundle install`
4. Setup the database `rails db:setup`

Based on the tables in the database, answer the following questions. You can use either the Rails Console with ActiveRecord or Postgres console and pure SQL. You can even import our database in another application of your choice, running the command `rake db:dump format=sql` it will create a .sql file and you will be able to import in any sql database!

Don't forget to attach the queries to your responses.

1. Find the country with the highest number of engineers
2. Find the three team with the highest number of engineers and order it by the number of bugs, bigger first.
3. Find the oldest engineer which has the most repositories written in functional programming
4. Find the second region less represented in within the teams
5. Find who published the book with the highest average rating
6. Find the capital of the country where the oldest person in the team that shipped the most features come from.
7. Find the inventor of 3rd most used programming language by the teams on the most crowded floor
8. Find the book least read by the the engineers who develop in Ruby

### 3. Build a simple web app (~3 to 8 hours)

In this last part you will submit a full stack application with two features:

1. Show a list of People records that are available via the [SalesLoft API](https://developers.salesloft.com/api.html#!/People/get_v2_people_json) using the API key in the email you received. Display each Person’s name, email address, and job title.
2. Create a button that, when clicked, displays a frequency count of all the **unique** characters in all the email addresses of all the People you have access to, sorted by frequency count.

| Character | Count |
| --------- | ----- |
| M         | 7     |
| R         | 5     |
| S         | 2     |

In SalesLoft we love building quality software and we like to write code other people enjoy to work with. For this reason, we will provide you the elements we consider important:

- Usability. Having a working application is the first step, right?
- Deployment. It would be cool to use the application in the cloud!
- Documentation. Instructions are important and also the reason behind your development choices.
- Data persistence. We work A LOT with databases and we want to make sure data stays where we want to be.
- Test. A test written today are 10 bugs will not pop up tomorrow!
- Git. Commit soon, commit often, branches make cooperative work way easier.
- Readability. Code should be written for other people to work on: names, indentation, spaces. Everything matter.
- Frontend frameworks. Do you any know of the numerous frameworks out there?
- Development principles. There are different ways to write code. The important thing is doing it deliberately.

Remember, what you learn during these exercises is more important than what you knew before starting!

If you have any question email us at engineeringjobs@salesloft.com

Good Luck!

The SaleLoft Team
