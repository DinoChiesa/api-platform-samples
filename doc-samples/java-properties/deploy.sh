#!/bin/bash

source ../../setup/setenv.sh

echo "NOTICE: THIS WORKS ONLY WITH APIGEE EDGE."
echo "Enter your password for the Apigee Enterprise organization $org, followed by [ENTER]:"

read -s password

echo Deploying $proxy to $env on $url using $username and $org

../../tools/deploy.py -n java-properties -u $username:$password -o $org -h $url -e $env -p / -d ../java-properties

echo "If 'State: deployed', then your API Proxy is ready to be invoked."

echo "Run 'invoke.sh'"
