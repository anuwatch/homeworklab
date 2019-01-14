#!/bin/bash
# Setup Sonarqube Project
if [ "$#" -ne 1 ]; then
    echo "Usage:"
    echo "  $0 GUID"
    exit 1
fi

GUID=$1
echo "Setting up Sonarqube in project $GUID-sonarqube"

# Code to set up the SonarQube project.
# Ideally just calls a template
# oc new-app -f ../templates/sonarqube.yaml --param .....

# To be Implemented by Student
oc new-app -f ./Infrastructure/templates/sonarqube.yaml --param POSTGRES_PASSWORD=c29uYXI= --param POSTGRES_USERNAME=c29uYXI= --param POSTGRES_DATABASE_NAME=c29uYXI= --param POSTGRES_PERSISTENT_VOLUME_CLAIM_SIZE=4Gi --param SONARQUBE_JDBC_PASSWORD=sonar --param SONARQUBE_JDBC_USERNAME=sonar --param SONARQUBE_JDBC_URL="jdbc:postgresql://postgresql/sonar" --param SONARQUBE_PERSISTENT_VOLUME_SIZE=4Gi -n ${GUID}-sonarqube
