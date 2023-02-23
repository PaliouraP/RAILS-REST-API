# TODOs REST-API

This application is running at this endpoint: https://todo-list-api.herokuapp.com

It responds to the following requests:

| Path                   | Method | Functionality                       |
| ---------------------- | ------ | ----------------------------------- |
| /auth/login            | POST   | Get JWT Token                       |
| /signup                | POST   | Create an account and get JWT Token |
| /todos                 | GET    | Get all User's To-Dos               |
| /todos                 | POST   | Add a To-Do                         |
| /todo/{id}             | GET    | Get a Specific To-Do                |
| /todo/{id}             | PUT    | Update a To-Do                      |
| /todo/{id}             | DELETE | Delete a To-Do and all of its items |
| /todo/{id}/items       | GET    | Get all Items from a To-Do          |
| /todo/{id}/items/{iid} | GET    | Get a specific item from a To-Do    |
| /todo/{id}/items       | POST   | Add an Item in a To-Do              |
| /todo/{id}/items/{iid} | PUT    | Update an Item in a To-Do           |
| /todo/{id}/items/{iid} | DELETE | Delete an Item in a To-Do           |

To test out the endpoints, be sure to visit the [Swagger Docs](https://todo-list-api.herokuapp.com/api-docs) inside the application.

<h3>Contributors:</h3>

+ [GeorgeMC2610](https://github.com/GeorgeMC2610)
+ [PaliouraP](https://github.com/PaliouraP)
