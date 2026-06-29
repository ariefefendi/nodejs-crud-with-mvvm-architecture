# Node.js CRUD Application (MVVM Architecture)

A simple CRUD application built with **Node.js**, **Express.js**, **Knockout.js**, **MySQL**, and **Handlebars (HBS)** using the **MVVM (Model–View–ViewModel)** architectural pattern. This project demonstrates how to separate business logic, presentation, and data access while keeping the codebase simple, maintainable, and easy to understand.

---

## Features

* CRUD (Create, Read, Update, Delete)
* MVVM Architecture
* RESTful API
* MySQL Database
* Knockout.js Data Binding
* Express.js Routing
* Handlebars (HBS) View Engine
* Responsive Frontend
* Server-side Rendering
* JSON API Response

---

# Technology Stack

| Layer          | Technology       |
| -------------- | ---------------- |
| Backend        | Node.js          |
| Framework      | Express.js       |
| Frontend       | Knockout.js      |
| View Engine    | Handlebars (HBS) |
| Database       | MySQL            |
| Date Library   | Moment.js        |
| Utility        | DateFormat       |
| Request Parser | Body Parser      |

---

# Dependencies

```json
{
  "express": "^4.16.3",
  "mysql": "^2.16.0",
  "body-parser": "^1.18.3",
  "hbs": "^4.0.1",
  "moment": "^2.24.0",
  "dateformat": "^3.0.3"
}
```

---

# MVVM Architecture

```
                User
                  │
                  ▼
          Knockout.js View
                  │
          Data Binding
                  │
                  ▼
            ViewModel
                  │
          HTTP Request
                  │
                  ▼
         Express Controller
                  │
                  ▼
               Model
                  │
                  ▼
               MySQL
```

The project follows the **MVVM (Model–View–ViewModel)** pattern to separate concerns between the user interface, business logic, and database layer.

### Model

Responsible for:

* Database access
* SQL queries
* CRUD operations

### View

Responsible for:

* HTML
* Handlebars templates
* User Interface

### ViewModel

Implemented using **Knockout.js**.

Responsible for:

* Observable data
* Form binding
* AJAX communication
* UI state management

---

# Request Flow

```
Browser

      │

      ▼

Knockout ViewModel

      │

 AJAX Request

      ▼

Express Router

      │

      ▼

Controller

      │

      ▼

Model

      │

      ▼

MySQL

      │

      ▼

JSON Response

      │

      ▼

ViewModel Update

      │

      ▼

Browser
```

---

# Project Structure

```
project/

├── app.js
├── package.json
│
├── config/
│   └── database.js
│
├── controllers/
│   └── userController.js
│
├── models/
│   └── userModel.js
│
├── routes/
│   └── routes.js
│
├── public/
│   ├── js/
│   │   └── viewmodel.js
│   ├── css/
│   └── images/
│
├── views/
│   ├── index.hbs
│   └── layout.hbs
│
└── database/
    └── database.sql
```

---

# Application Workflow

```
User

 │

 ▼

Open Browser

 │

 ▼

Knockout.js

 │

 ▼

Fill Form

 │

 ▼

AJAX

 │

 ▼

Express.js

 │

 ▼

Controller

 │

 ▼

Model

 │

 ▼

MySQL

 │

 ▼

JSON

 │

 ▼

Knockout Observable

 │

 ▼

View Updated Automatically
```

---

# Installation

Clone the repository

```bash
git clone https://github.com/username/project.git
```

Install dependencies

```bash
npm install
```

Configure MySQL connection.

Start the application.

```bash
node app.js
```

Open your browser.

```
http://localhost:8000
```

---

# Why MVVM?

Using MVVM provides several advantages:

* Better separation of concerns
* Easier code maintenance
* Reusable ViewModel logic
* Cleaner frontend architecture
* Automatic UI updates using Knockout Observables
* Easier debugging and testing

---

# Advantages

* Lightweight architecture
* Beginner-friendly project
* Easy to extend
* Clean folder organization
* Suitable for learning Node.js + MySQL
* Demonstrates MVVM with Knockout.js
* Simple REST API implementation
* Good starting point for enterprise applications

---

# Future Improvements

* JWT Authentication
* User Login
* Role & Permission
* Pagination
* Search & Filter
* Validation
* File Upload
* Docker Support
* Unit Testing
* API Documentation (Swagger/OpenAPI)

---

# License

This project is intended for educational purposes and serves as a simple reference implementation of the **MVVM architectural pattern** using Node.js, Express.js, Knockout.js, and MySQL.
