# Creates postgres docker container from dump, e.g: sh create-postgres-from-dump.sh 123456 ./my-dump.sql

echo "Starting postgres..."

docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=$1 -d postgres
sleep 3
cat $2 | docker exec -i postgres psql -U postgres

echo "Postgres is up and ready!!!"