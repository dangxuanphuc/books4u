# Books4U

## Getting started

### Recommended setup using Docker
This sets up a Ruby on Rails 6.0.2 app using Docker and Docker-Compose to pull in docker images of Ruby 2.7.0 and MySQL 5.7.25.

#### To Use:

1. Clone this repo

   `git clone https://github.com/dangxuanphuc/books4u.git`

2. cd into the new directory

   `cd books4u`

3. Update the Dockerfile and docker-compose.yml

   ```
   #base image to build upon
   FROM ruby:2.7.0

   RUN apt-get update && apt-get install -y build-essential

   RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs

   RUN mkdir -p /app
   WORKDIR /app

   COPY Gemfile Gemfile.lock package.json yarn.lock ./

   RUN gem install bundler -v "2.1.2" && bundle install --jobs 20 --retry 5

   RUN npm install -g yarn

   RUN yarn install --check-files

   ADD ...

   COPY . ./

   EXPOSE 3000
   ```

   ```
   version: "3"
   services:
     db:
       image: mysql:5.7.25
       environment:
         - MYSQL_ROOT_PASSWORD=123456
     web:
       build: .
       command: bash -c "rm -f tmp/pids/server.pid && bundle install && bundle exec rails s -p 3000 -b '0.0.0.0'"
       tty: true
       stdin_open: true
       volumes:
         - .:/app
       ports:
         - "3000:3000"
       depends_on:
         - db
     phpmyadmin:
       image: phpmyadmin/phpmyadmin
       links:
         - db:mysql
       ports:
         - 8080:80
   ```

4. Rebuild docker image

   `docker-compose build`

5. Start services

   `docker-compose up`

6. If the Bash is part of your PATH, you can simply type "bash" and have a Bash terminal in your container

   `docker exec -it <container-name> /bin/bash`

7. Reset database

   `rails db:migrate:reset`

### Developer setup

Here's how to get yourself set up to develop the app:

1. Make sure you have Ruby 2.7 installed. Check with `ruby -v`. If you need to install or upgrade Ruby
2. Make sure you have Bundler installed: Try `bundle -v` and do `gem install bundler` if needed.
3. Fork the repo at https://github.com/jasoncrawford/freeobjectivistbooks, then clone it with `git clone`.
4. Once you have the repo locally, you should be able to run `bundle` in the project directory, and it will install all the dependencies (including Rails 6.0.2 if you don't already have it).
5. After running the bundle, you will need to run `rails db:migrate` to add new tables to your database. You can start your app with `rails server` and install your app by visiting `http://localhost:3000` in your web browser.

## Contributing

1. Fork it ( https://github.com/dangxuanphuc/books4u )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
