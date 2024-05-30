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
* Docker : conteinerization platform
* Docker Compose : tool for defining and running multi-container Docker applications
* AWS ECS : a fully managed container orchestration service for deployment, scaling, and management of containerized applications


## Project Architecture

![API](https://imgur.com/i2h7qlk)


## AWS deployment architecture
## API usage