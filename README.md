## setting up rails app with postgress
rails new recipe-app--ROR --database=postgresql

CREATE USER deneliobuaz WITH PASSWORD 'admin';
ALTER USER deneliobuaz CREATEDB;
