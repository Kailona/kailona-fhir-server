#!/bin/bash

if [[ "$INITIALIZE_DB" = "true" ]]
then
    java -jar /tmp/schema/fhir-persistence-schema-4.4.2-cli.jar --prop-file /tmp/schema/postgresql.properties --schema-name fhirdata --create-schemas --db-type postgresql
    java -jar /tmp/schema/fhir-persistence-schema-4.4.2-cli.jar --prop-file /tmp/schema/postgresql.properties --schema-name fhirdata --update-schema --db-type postgresql
fi
