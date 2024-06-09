# eventsHub

eventsHub is a robust Events Management System designed to optimize the process of organizing and managing events such as conferences, workshops, and meetups.


## Features:

* Create: Organizers can create new events with details like date, location, description, and speakers.
```
POST /events
```

* Read: Users can view a list of events or details of a specific event.
```
GET /events

GET /events/{id}
```

* Update: Organizers can update event details such as date, location, or speaker lineup.

```
PUT /events/{id}
```
* Delete: Organizers can delete events that are canceled or completed.
```
DELETE /events/{id}
```

## Technologies used
* Python
* Django : Backend framework
* Django Rest Framework : powerful toolkit for building Web APIs in Django.
* Postgres : Relational database for storing events data
* Docker : conteinarization platform
* Docker Compose : tool for defining and running multi-container Docker applications
* AWS ECR: Amazon Elastic Container Registry - fully managed Docker container registry to store, manage, and deploy Docker container images
* AWS ECS : mazon Elastic Container Service - fully managed container orchestration service for deployment, scaling, and management of containerized applications
* AWS RDS : Amazon Relational Database Service - to set up, operate, and scale a relational database in the cloud
* Terraform: Infrastructure as Code (IaC) tool Used for provisioning and managing infrastructure on AWS

## Helper Tools:
* Postman: API testing tool
* Tableplus: Handle database management, test connection between containers.



## Project Architecture

![API](https://i.imgur.com/i2h7qlk.png)


## AWS ECS deployment architecture
![AWS ECS](https://i.imgur.com/YqdXKdy.png)

## API usage
* Getting started:
     * * Clone the repo: git clone https://github.com/effiecancode/eventsHub.git
     * * Navigate to project directory: cd Hub
     * * Build and Run Containers: docker-compose build && docker-compose up
     * * Test API: Use postman or Curl

* Explore APIs running on aws on:
    * * https://eventshub-dev-alb-533225746.us-east-1.elb.amazonaws.com or
    * * https://effiecancode.buzz
