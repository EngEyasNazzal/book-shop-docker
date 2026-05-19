Book Shop Docker Project
========================

Overview
--------

This project dockerizes a Django Book Shop application using Docker, Docker Compose, GitHub Actions, and Docker Hub.

Project Structure
-----------------

- Dev Pipeline
- Test Pipeline
- Production Pipeline
- Dockerized Django Backend
- PostgreSQL Database
- Nginx Reverse Proxy

Technologies Used
-----------------

- Django
- Docker
- Docker Compose
- GitHub Actions
- Docker Hub
- PostgreSQL
- Nginx

Branches
--------

- dev -> development pipeline
- test -> testing pipeline
- main/master -> production pipeline

Pipelines
---------

Dev Pipeline
~~~~~~~~~~~~

- Creates artifacts
- Builds Docker image
- Pushes image to Docker Hub

Test Pipeline
~~~~~~~~~~~~~

- Uses fresh artifacts
- Builds testing image
- Pushes test-latest image

Production Pipeline
~~~~~~~~~~~~~~~~~~~

- Builds production image
- Pushes prod-latest image

Docker Compose
--------------

Run the project using:

   docker compose up --build

Docker Hub Repository
---------------------

::

   eyasnazzal/book-shop-docker
