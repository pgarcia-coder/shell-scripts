# Create a dump from container eg. sh create-dump-from-postgres.sh postgres

docker exec -t $1 pg_dumpall -c -U postgres > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql