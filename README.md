
Java global transaction using HornetQ+JBoss TS+MySQL+Tomcat+Spring

Scenario 1: To run successful transaction:
(1)run Tomcat
(2)run deploy.sh to deploy to Tomcat
(3)run insertQ.sh to insert a random message into HornetQ queue
(4)run moveQueueToDB.sh to transfer queue to MySQL
(5)run displayDB.sh to show database records, a new record should be in the database
(6)run receive.sh to see that there is no message in the queue

Scenario 2: To run unsuccessful transaction:
(1)comment in " throw new RuntimeException("xxxxx");" in DefaultStudentService.java
(2)follow Scenario 1
(3)run receive.sh to see that the message is still in the queue
(4)there should be no record inserted into the database
