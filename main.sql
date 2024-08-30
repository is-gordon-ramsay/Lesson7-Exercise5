.mode column

PRAGMA foreign_keys = True;
--table structure
.read MoviesTables.sql
.read TriathalonTables.sql

.print "Exercise 5 - Movies and Triathalons tasks"
.print \n

.print "Task 1 - Query 1"
.print \n


  
select forename, surname
from Actor
where actorID = any(select actorID
  from MovieCast, Movie
  where Movie.title = "Eyes Wide Shut");




.print "Task 1 - Query 2"
.print \n

.print "Task 1 - Query 3"
.print \n

.print "Task 1 - Query 4"
.print \n

.print "Task 1 - Query 5"
.print \n

.print "Task 1 - Query 6"
.print \n

.print "Task 2 - Query 1"
.print \n

.print "Task 2 - Query 2"
.print \n

.print "Task 2 - Query 3"
.print \n

.print "Task 2 - Query 4"
.print \n

.print "Task 2 - Query 5"
.print \n

.print "Task 2 - Query 6"
.print \n
