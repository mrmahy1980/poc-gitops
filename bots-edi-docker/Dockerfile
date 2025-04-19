FROM python:3.10-slim

WORKDIR /bots

RUN apt-get update && \
    apt-get install -y gcc libpq-dev git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# FIXED: Corrected to use 'master' branch
RUN pip install git+https://github.com/bots-edi/bots.git@master psycopg2-binary

RUN mkdir -p /bots/usersys /bots/botssys

ENV BOTS_DB_ENGINE=django.db.backends.postgresql_psycopg2 \
    BOTS_DB_NAME=botsdb \
    BOTS_DB_USER=bots \
    BOTS_DB_PASSWORD=bots123 \
    BOTS_DB_HOST=localhost \
    BOTS_DB_PORT=5432

EXPOSE 9000

CMD ["bots-engine", "start"]
