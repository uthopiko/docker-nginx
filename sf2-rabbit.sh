#!/bin/bash

export BLACKFIRE_SERVER_TOKEN=0abebf31cf2724b92e953872698111312d0e3032d509f8783d28ae0a5a7da467
export BLACKFIRE_SERVER_ID=b8463000-087c-4765-8e3c-aecbb29192f5
export BLACKFIRE_CLIENT_TOKEN=b71468c04fdc94a8933a30d945f66f207bc0f4dd05da530c50eb0bfa9b0ca716
export BLACKFIRE_CLIENT_ID=284a9306-271b-46e4-b443-6915a60904dc
export ASIER_PRUEBA=3s243dsf

docker run --name="blackfire" -d -e BLACKFIRE_SERVER_ID -e BLACKFIRE_SERVER_TOKEN blackfire/blackfire
docker run -d -p 9001:9000 --name=php5.6 --link blackfire:blackfire -v /Users/Asier/Docker/php/php-fpm.conf:/usr/local/etc/php-fpm.conf -v /Users/Asier/Docker/php/socket:/var/run php5


bash
