#!/bin/bash

// Variables to create a cosmodb
RG_GROUP="cosmos_db"
LOC="eus"
ACC_NAME="cosmos_db_account"
DB_NAME="cosmos_db"



// Create your user group
az group create -l $LOC -n $RG_GROUP

// Create your cosmosdb account (required)
az comsmodb create --name cosmod_db_account --resource-group $RG_GROUP


// Create the database
az cosmosdb sql database create --acount-name $ACC_NAME --name $DB_NAME

// Create SQL DB container (partition key required)
az cosmosdb sql container create --resource-group $RG_GROUP --account-name $ACC_NAME --database-name $DB_NAME --name <your container name> --partition-key-path <your db key>
