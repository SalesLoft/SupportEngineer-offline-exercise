# Support Engineer offline exercise

Hello #{insert awesome candidate name here}!

Thank you for applying to our support engineering team.  We'd like to get to know you and your skills better, so we have a two-part exercise.  We'll be looking at this in an anonymized view; please make it easy for us by leaving your name out of the submission.  This exercise should take you 2-4 hours but at the end we'll have a better understanding of you, your knowledge, and your ability to research.

> Please read this entire README before starting (don't worry, it will only take 5 minutes).

## Table of Contents

This is how the exercise is structured with an indication of how much of the total time you should spend on each part.

- [Part 1 - core values (20%)](#1-core-values)
- [Part 2 - sql hunt (80%)](#2-the-sql-hunt)

### 1. Core Values

Take a look at SalesLoft's core values https://salesloft.com/company/ and then write a short paragraph for each of them, detailing out a specific event in your life where you've demonstrated that core value. We're looking for both great examples and good communication skills as you tell us about them.

- Bias Toward Action
- Glass Half Full
- Team Over Self
- Put Customers First
- Focused on Results

### 2. The SQL Hunt!

As a support engineer, you'll need to effectively navigate a SQL database, specifically PostgreSQL. In this exercise, you will have to fetch data according to the instructions.

We are providing the application in a Docker container to prevent any configuring issue and, we are able to gurantee a smooth experience for both Unix and Windows systems.

1. Download and install Docker from https://docs.docker.com/install/ for your OS
   
   *NOTE FOR WINDOWS USERS*
   
   Make sure to install the latest version of Docker desktop and enable the file sharing option under Settings > Resources
   ![docker](https://i.imgur.com/8H3Es1k.png)

2. Start Docker in your system (you should see the whale icon somewhere on your screen)
3. Clone this repo you're in right now.  Near the top, click the green `clone or download` button and choose your preferred method - HTTPS or SSH.    For more information you can read through here - https://help.github.com/en/github/using-git/which-remote-url-should-i-use.
4. `cd` into `SupportEngineer-offline-excercise`
5. For **OSX / Linux** users run the following command `./docker_exec.sh` , for **Windows** users run `docker_exec.bat` these commands will setup the rails app, and prepare the database.psql -h db -p 5432 -U postgres.

You can choose to run your queries from Rails Console using `rails c` or from the Postgres console with the following command `bundle exec rails dbconsole`

Alternatively, you can import our database in another application of your choice. Running the command `rake db:dump format=sql` will create a .sql file to import.

**If you are using Windows and are having problems with Docker, here is an alternative:**
- Register for a free PostGresQL account with [ElephantSQL](https://customer.elephantsql.com/instance/create?plan=turtle)
- Copy 20200602015045_sqlhunt_development.sql from this repo to your local machine
- From the *Details* page of your ElephantSQL account, copy the URL to your database to use in the next step
- Open a terminal window on your local machine and run `psql URLcopiedfrompreviousstep < 20200602015045_sqlhunt_development.sql` to upload the database to your ElephantSQL account
- In ElephantSQL, go to the *Browser* page to run queries


We would like to see the queries along with the answers for the following questions:

1. Find the country with the highest number of engineers.
2. Find the three teams with the highest number of engineers and order them by the number of bugs, largest first.
3. Find the oldest engineer with a repository written using functional programming. If needed, the winner is the one with the most functional programming repositories.
4. Find the second least represented region across all the teams.
5. Find who published the book with the highest average rating.
6. Find the capital of the country where the oldest person in the team that shipped the most features comes from.
7. Find the inventor of the third most used programming language by the teams on the most populated floor.
8. Find the book least read by the the engineers who develop in Ruby.

Here you can find helpful documentations: [ActiveRecords queries](https://guides.rubyonrails.org/active_record_querying.html) [Postgresql](http://www.postgresqltutorial.com/postgresql-cheat-sheet/)

Remember, what you learn during these exercises is more important than what you knew before starting!

If you have any questions, email us at engineeringjobs@salesloft.com.

Good Luck!

The SalesLoft Team
