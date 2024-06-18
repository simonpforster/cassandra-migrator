# Hathor Database Migrator

The Hathor Database Migrator is a docker image which uses liquibase to run database migrations.
It currently only supports Cassandra but, support for more databases can be added later.

## Local
To run the migrator locally use `docker-compose up`: a dockerised Cassandra instance will be launched and seeded with a keyspace called `shop`.

### Configuration
The following Liquibase environment variables are used to grant Liquibase access to Cassandra.

- LIQUIBASE_COMMAND_USERNAME
- LIQUIBASE_COMMAND_PASSWORD
- LIQUIBASE_COMMAND_CHANGELOG_FILE
- LIQUIBASE_COMMAND_DRIVER
- LIQUIBASE_COMMAND_URL


### How to Use
1. Add sql files which contain database migrations into /liquibase/changesets directory.
2. To verify that the connection to the database works use `liquibase status`.
3. To perform a dry-run and see the cql which will be applied use `liquibase update-sql`.
4. To perform a migration use `liquibase update`.

## References
Liquibase - Parameters: https://docs.liquibase.com/parameters/home.html

Liquibase - How Liquibase finds files: https://docs.liquibase.com/concepts/changelogs/how-liquibase-finds-files.html

Liquibase - Multiple SQL Migration: https://docs.liquibase.com/workflows/liquibase-community/multiple-sql-migration.html

Liquibase - Using Liquibase with Apache Cassandra: https://contribute.liquibase.com/extensions-integrations/directory/database-tutorials/cassandra/apache-cassandra/