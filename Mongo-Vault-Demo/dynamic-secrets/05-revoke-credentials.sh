#! /bin/bash

curl -X PUT \
  http://127.0.0.1:8200/v1/sys/leases/revoke \
  -H 'X-Vault-Token: root' \
  -H 'cache-control: no-cache' \
  -d '{
  "lease_id":  "database/creds/my-role/VJhgxbfsMqloJ24XCXvxCrx9"
}'
