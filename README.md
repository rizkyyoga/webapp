# webapp
### Functional
- simple registration with validation and unit test (for learning purpose)
	
### Specification
- Framework : spring
- database : mysql 
- unit test : junit
- ORM : JPA + Hibernate
- Other : java, html5, jquery

### Database
- username : root
- password :
- hostname : localhost
- port : 3306
- dbname : webapp
	
### How to run
1. open cmd/terminal
2. locate to this project directory
3. if you want it running in local use 'mvn clean jetty:run -Plocal' and access it in http://localhost/webapp/ 
4. or if you want it deployed in server use command 'mvn clean install', go to 'target' folder and deploy webapp.war in your server and access it in http://YOURIPSERVER:YOURPORTSERVER/webapp/ 