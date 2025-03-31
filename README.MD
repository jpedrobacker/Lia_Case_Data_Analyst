# USAGE

  ### Run docker compose file
 ```bash
	docker-compose up --build
 ```

  ### Enter container DB via terminal
  ```bash
	export PGPASSWORD='password' && psql -U sql_user -h localhost -p 5432 -d sql_user
 ```

 ### Run SQL script
 ```psql
	\i init.sql
 ```

