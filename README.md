# Blood Bank Web App Project

## Introduction

This project is a culmination of the following:

  1. **Project Management**
  2. **Python Fundamentals and Testing**
  3. **Git**
  4. **Linux**
  5. **Python Web Development**
  6. **Databases**
  7. **Continuous Integration and Deployment (CI/CD)**
  8. **Azure Cloud Fundamentals**
  9. **Containerisation**

## Overview 

To create a simple **web application** for **registered blood donors** that integrates with a **SQL database** and demonstrates **CRUD functionality**. 

Use **container instances**.

To create a **continuous integration/continuous deployment (CI/CD) pipeline** that will automatically **test, build and deploy** the application.

## Project Management and Version Control

Technologies for Project management and version control:
  
  ### **Jira**
  
  Jira to be used to track the project using Agile Scrum methods listed below:
    
    MoSCoW prioritisation
    Estimation of efforts
    User Stories
  
  ### **Git and Guthub**
  
  Git as version control system and code repository to be hosted on GitHub. Feature branch model to be used.
  Produce a risk assessment to identify and analyse any potential risks to your application and infrastructure.

## Application

Technologies:
  
  1. **Python**
  2. **Pytest**
  3. **Flask**
  4. **Docker/Docker Compose**
  5. **MySQL or equivalent**

Create Web application using Flask framework.
CRUD functionality.
ERD to illustrate relationships between entities and modelled in the database.

### Application

The application is a monolithic **Flask application** that serves both the frontend and backend of the application.
The frontend aspect of the app will use HTML templates to serve the web pages that allow the user to perform CRUD functionality with information from the database.
The backend aspect of the application will use SQL Lite to model and integrate with the database.

The Blood Bank application will be hosted in a container to allow it to be deployed to a **Docker Swarm**

Blood bank website made with [python3](https://www.python.org/download/releases/3.0/) ,[flask](http://flask.pocoo.org/), [Sqlite](https://www.sqlite.org/index.html), [Bootstrap](https://getbootstrap.com). 

The main functionalities of the User are listed below:

1. User Registration, Login and Logout.
2. Update Profile and Delete Account.
3. Request/contact for Blood.
4. Notifications for Requests.
5. Search for Blood Donor and Type.

NOTE : admin's credentials

1. Email : admin@bloodbank.com
2. Password : admin

Functionalities for Admin User are listed below:

1. Dashboard.
2. Add blood in the Blood Bank.
3. Edit blood donatations and their details.
4. Contact registered users.
5. Delete users/entries.

Instructions:

1. clone the repository and navigate to the directory 

2. Create a virtual environment 
```python
python3 -m venv venv && source venv/bin/activate
```

2. Install the dependencies

```python
 pip install -r requirements.txt
```
3. Start the server

```python
 python3 server.py
```
4. Registered Users can now donate blood.

### Database

Application to interface with separate database service - **SQL Lite**.
The database must contain two tables with a relationship.
The relationship must at least be one-to-many.

### Testing 

Unit tests must be written for the application to achieve high coverage.
**pytest** to write and test the application.

## CI/CD Pipeline

Automate the integration and deployment of new code.
Automation server is **Jenkins**.

CI/CD Pipeline must: 
  
  1. **Run unit tests**
  2. **Build the Docker images**
  3. **Push the Docker images to a registry**
  4. **Deploy to a Swarm**

Pipeline to be triggered when new code to be pushed onto GitHub repository. Achieved by **GitHub Webhook**.

## Deployment

The application should be deployed to a **Docker Swarm** hosted in the cloud.
One manager node and one worker node. Neither of these nodes should be the Jenkins build server.
