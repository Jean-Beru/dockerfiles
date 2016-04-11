# akeneo-pim
Docker image for Akeneo PIM

## Configure with docker-compose

```
# docker-compose.yml
app:
  image: jeanberu/akeneo-pim
  container_name: akeneo_pim
  links:
    - mysql:mysql
    - mongo:mongo
  volumes:
    - .:/var/www/html
  ports:
    - 8000:80

mysql:
  image: mysql:latest
  container_name: akeneo_pim_mysql
  environment:
    MYSQL_ROOT_PASSWORD: root
    MYSQL_DATABASE: akeneo_pim
    MYSQL_USER: akeneo_pim
    MYSQL_PASSWORD: akeneo_pim

mongo:
  image: mongo:2.4
  container_name: akeneo_pim_mongo
```

## Run with docker-compose

```
# Run server
docker-compose up -d

# Install
docker-compose run --rm app composer install
docker-compose run --rm app app/console pim:install
```
