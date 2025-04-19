
#!/bin/bash
set -e

# Wait for PostgreSQL to be available
until pg_isready -h $BOTS_DB_HOST -U $BOTS_DB_USER; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done

# Run init script (psql ignores if already created)
psql -h $BOTS_DB_HOST -U $BOTS_DB_USER -d $BOTS_DB_NAME -f /docker-entrypoint-initdb.d/init-db.sql || true

# Start Bots
bots-engine
