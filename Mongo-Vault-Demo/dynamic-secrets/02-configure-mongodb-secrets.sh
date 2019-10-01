#! /bin/bash

vault write database/config/my-mongodb-database \
    plugin_name=mongodb-database-plugin \
    allowed_roles="my-role" \
    connection_url="mongodb://{{username}}:{{password}}@192.168.103.100:27000/admin" \
    username="m103-admin" \
    password="m103-pass"