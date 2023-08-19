# Use official PostgreSQL image as base
FROM postgres:12.16

# Set environment variables for PostgreSQL
ENV POSTGRES_DB airbuydb
ENV POSTGRES_USER airbuy_user
ENV POSTGRES_PASSWORD password1

# Copy SQL script to initialize the database and table
COPY init.sql /docker-entrypoint-initdb.d/
