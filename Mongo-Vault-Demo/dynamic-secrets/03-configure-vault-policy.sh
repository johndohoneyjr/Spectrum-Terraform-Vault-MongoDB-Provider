#! /bin/bash

 vault write database/roles/my-role \
    db_name=my-mongodb-database \
    creation_statements='{ "db": "admin", "roles": [{ "role": "readWrite" }, {"role": "read", "db": "test"}] }' \
    default_ttl="5m" \
    max_ttl="24h"


