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
- Ensure available ports: 3000 (frontend), 8080 (backend), 3306(MySQL)

1. Clone repo and open the project folder
 
```bash
git clone "https://github.com/ericahoff/developer-coding-exercise.git"
cd developer-coding-exercise
```

2. Run the app
run
`docker-compose up --build`
from the project folder

3. Open in browser
    - Frontend: http://localhost:3000
    - Backend: http://localhost:8080