
Java global transaction using HornetQ+JBoss TS+MySQL+Tomcat+Spring

Scenario 1: To run successful transaction:
(1)add 'MyQueue' to HornetQ,run HornetQ
(2)run Tomcat
(3)run deploy.sh to deploy to Tomcat
(4)run insertQ.sh to insert a random message into HornetQ queue
(5)run moveQueueToDB.sh to transfer queue to MySQL
(6)run displayDB.sh to show database records, a new record should be in the database
(7)run Jconsole and connect it to HornetQ, the message should not be int the Queue

Scenario 2: To run unsuccessful transaction:
(1)comment in " throw new RuntimeException("xxxxx");" in DefaultStudentService.java
(2)follow Scenario 1
(3)run Jconsole and connect it to HornetQ, the message should still in the Queue
(4)there should be no record inserted into the database
