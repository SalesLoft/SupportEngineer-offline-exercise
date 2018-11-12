# Support Software Engineer (Junior Developer) offline exercise

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

SalesLoft is a sales engagement application, allowing its users to reach prospective customers faster and more effectively.

- Each SalesLoft user belongs to a team.
- A team has users based on the number of licenses purchased.
- A user can add people to SalesLoft.
- A user can add companies to SalesLoft.
- A person can belong to a Salesloft user.
- People can belong to a company.
- A team or user can create a cadence. What's a cadence? A cadence is a sequence of "steps" such as a phone call step and an email step that a team can use structure customer contact.
- In other words, a cadence can include people, phone calls, and email steps.
- A user can pick the day a step will run.
- An email step can be run manually or automatically at a certain time.  Automatic emails steps mean that if a person is on that step they will receive the email without the user having to hit send.

TODO: Based on this information, draw an Entity Relationship Diagram [ERD](https://www.lucidchart.com/pages/er-diagrams) representing the relationships between our data in the SalesLoft app. Please note down your design choices. Your ERD can be designed using any tool you prefer. https://www.draw.io/ is a free and useful tool. Paper and pencil and a picture of your ERD sketch works as well!

### 2. The SQL Hunt! (~1.5 hours)

As a support software engineer, you'll need to effectively navigate a SQL database, specifically PostgreSQL. In this exercise, you will have to fetch data according to the instructions.

1. Clone this repo `git clone git@github.com:SalesLoft/SupportEngineer-offline-excercise.git`
2. `cd` into `SupportEngineer-offline-excercise`
3. Type `bundle install`
4. Setup the database `rails db:setup`

You can use either the Rails Console with ActiveRecord or Postgres console and pure SQL. Alternatively, you can import our database in another application of your choice, running the command `rake db:dump format=sql` it will create a .sql file to import.

We would like to see the queries along with the answers for the following questions:

1. Find the country with the highest number of engineers.
2. Find the three teams with the highest number of engineers and order them by the number of bugs, largest first.
3. Find the oldest engineer who has the most repositories written using functional programming.
4. Find the second least represented region within the teams.
5. Find who published the book with the highest average rating.
6. Find the capital of the country where the oldest person in the team that shipped the most features comes from.
7. Find the inventor of the third most used programming language by the teams on the most crowded floor.
8. Find the book least read by the the engineers who develop in Ruby.

### 3. Build a simple web app (~3 to 5 hours)

In this last part you will submit a web application with two features:

1. Show a list of People records that are available via the [SalesLoft API](https://developers.salesloft.com/api.html#!/People/get_v2_people_json) using the API key in the email you received. Display each person’s name, email address, and job title.
2. Create a button that, when clicked, displays a frequency count of all the **unique** characters in all the email addresses of all the People you have access to, sorted by frequency count.

| Character | Count |
| --------- | ----- |
| M         | 7     |
| R         | 5     |
| S         | 2     |

At SalesLoft we love building quality software and we like to write code other people enjoy working with. Here are the elements we consider important:

- Usability. Having a working application is the first step, right?
- Deployment. It would be cool to use the application in the cloud!
- Documentation. Instructions are important and we want to see the reasons behind your development choices.
- Data persistence. We work A LOT with databases and we want to make sure data stays where we want it to be.
- Tests. A test written today is 10 bugs that will not pop up tomorrow!
- Git. Commit soon and commit often. Branches make cooperative work way easier.
- Readability. Code should be written for other people to work on: names, indentation, spaces. Everything matters.
- Frontend frameworks. Do you any know of the numerous frameworks out there? Are you using your choice to your advantage?
- Development principles. There are different ways to write code. The important thing is doing it deliberately.

Remember, what you learn during these exercises is more important than what you knew before starting!

If you have any questions, email us at engineeringjobs@salesloft.com

Good Luck!

The SalesLoft Team
