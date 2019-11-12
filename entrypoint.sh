#!/bin/sh

sed -i \
	-e "s/BUCKET_NAME_HERE/${S3BUCKET}/;" \
	-e "s/SERVER_NAME_HERE/${HOSTNAME}/;" \
	-e "s/DNS_RESOLVER_HERE/${DNS}/;" \
	/etc/nginx/nginx.conf

exec "$@"