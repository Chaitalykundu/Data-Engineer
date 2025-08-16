# DBT

## install DBT in a virtual environment

1. Go to that folder where DBT have to be install. create virtual environment using the following command
   > python -m venv dbt-env
2. to activate dbt virtual environment
   > dbt-env/scripts/activate
3. install dbt-core and db-postgres
   > pip install dbt-postgres
4. check dbt version
   > dbt --version
5. create a project ( name it dbt_project) and initialize it
   > dbt init dbt_project
6. go to the project
   > cd dbt_project
7. check the path

   > pwd

8. go to dbt_project.yml file. change - profile: "postgres"
9. open pgAdmin4 > go to protgreSQL 15 select properties. check if all the things are ok or not
10. file explore > C drive > Users > chaitaly_kundu > .dbt > open profiles.yml in vs code. change the following things

Make sure database is already created.

```
postgres:
 target: dev

 outputs:
   dev:
     type: postgres
     host: localhost
     user: postgres
     password: used_password
     port: 5433
     dbname: postgres
     schema: public
     threads: 1
     connect_timeout: 10
```

11. check all versions and configurations

    > dbt debug

12. Run DBT project
    > dbt run
