
## Description
In this project, I learned how to develop a number of small, self-contained, loosely coupled microservices  
that will communicate with one another and a simple front-end application with a REST API, with RPC, over  
gRPC, and by sending and consuming messages using AMQP, the Advanced Message Queuing Protocol. The built  
microservices includes the following functionality:

* A Front End service, that just displays web pages;

* An Authentication service, with a Postgres database;

* A Logging service, with a MongoDB database;

* A Listener service, which receives messages from RabbitMQ and acts upon them;

* A Broker service, which is an optional single point of entry into the microservice cluster;

* A Mail service, which takes a JSON payload, converts into a formatted email, and send it out.

Also I learned how to deploy distributed application to a Docker Swarm and Kubernetes, and how to scale up and down, as necessary, and to update individual microservices with little or no downtime.

Link to the [course](https://www.udemy.com/course/working-with-microservices-in-go/)


## Running the project

From the project directory, execute this command (this assumes that you have 
[GNU make](https://www.gnu.org/software/make/) and a recent version
of [Docker](https://www.docker.com/products/docker-desktop) installed on your machine):

~~~
make up_build 
~~~

If the code has not changed, subsequent runs can just be `make up`.

Then start the front end:

~~~
make start
~~~

Hit the front end with your web browser at `http://localhost:4000`.

To stop everything:

~~~
make stop
make down
~~~

While working on code, you can rebuild just the service you are working on by
executing

`make auth`

Where `auth` is one of the services:

- auth
- broker
- logger
- listener
- mail

All make commands:

~~~
Choose a command:
  up                  starts all containers in the background without forcing build
  build_dockerfiles   builds all dockerfile images
  push_dockerfiles    pushes tagged versions to docker hub
  up_build            stops docker-compose (if running), builds all projects and starts docker compose
  down                stop docker compose
  build_front_linux   builds the front end binary as a linux executable
  build_broker        builds the broker binary as a linux executable
  build_mailer        builds the mailer binary as a linux executable
  build_logger        builds the logger binary as a linux executable
  build_listener      builds the listener binary as a linux executable
  build_auth          builds the auth binary as a linux executable
  build_front         builds the front end binary
  start               starts the front end
  stop                stop the front end
  swarm_down          stops the swarm
  test                runs all tests
  clean               runs go clean and deletes binaries
  help                displays help
~~~