# eventsHub

eventsHub is a CRUD system designed to optimize the processes of organizing and managing events such as conferences, workshops, and meetups.


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
* PostgreSQL : Relational database for storing events data
* Docker : conteinerize the API
* AWS ECS : an AWS fully managed container service to deploy docker images


## Project Architecture
## AWS deployment architecture
## API usage