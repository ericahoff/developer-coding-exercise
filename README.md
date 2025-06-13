# developer-coding-exercise
Coding exercise for interview. 

This is a simple full-stack application to fulfill the skill assessment requirements.

Tech Stack:

Backend: Java 17, Spring Boot, Spring JDBC

Frontend: React with Material UI

Database: MySQL 8

Container: Docker / Docker Compose

Run Instructions:
- Ensure you have Docker / Docker Compose Installed on your machine (https://docs.docker.com/get-started/get-docker/)
** If you have the desktop version, you need to run the Docker App before proceeding **
- Ensure available ports: 3000 (frontend), 8080 (backend), 3306(MySQL)

1. Clone repo and open the project folder

```bash
git clone "https://github.com/ericahoff/developer-coding-exercise.git"
cd developer-coding-exercise
```

2. Run the app
From the project folder, run
`docker-compose up --build`
(this may take a moment, but should build the backend & frontend, and create / seed the db)

3. Once its built and running, open in browser
    - Frontend: http://localhost:3000
    - Backend: http://localhost:8080

    To use, enter a bird ID (1-10) in the form input.