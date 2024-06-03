FROM liquibase/liquibase:4.28.0-alpine

COPY root.changelog.yml /liquibase/root.changelog.yml
COPY liquibase.properties /liquibase/liquibase.properties
COPY drivers/* /liquibase/lib/