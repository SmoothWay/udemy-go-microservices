## Description

    In this project, I learned how to develop a number of small, self-contained, loosely coupled microservices that will communicate with one another and a simple front-end application with a REST API, with RPC, over gRPC, and by sending and consuming messages using AMQP, the Advanced Message Queuing Protocol. The built microservices includes the following functionality:

    * A Front End service, that just displays web pages;

    * An Authentication service, with a Postgres database;

    * A Logging service, with a MongoDB database;

    * A Listener service, which receives messages from RabbitMQ and acts upon them;

    * A Broker service, which is an optional single point of entry into the microservice cluster;

    * A Mail service, which takes a JSON payload, converts into a formatted email, and send it out.

    Also I learned how to deploy distributed application to a Docker Swarm and Kubernetes, and how to scale up and down, as necessary, and to update individual microservices with little or no downtime.

Link to the [course](https://www.udemy.com/course/working-with-microservices-in-go/)


## Still developing