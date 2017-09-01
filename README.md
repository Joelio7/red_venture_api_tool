# README

This README will explain how to get the api running on your environment.

Steps to setup environment:
* Git clone the repo on your local machine and "CD" into the project directory

* Install ruby 2.3.1. I highly recommend using rvm for easy version management. Here are instructions: https://code.tutsplus.com/tutorials/ruby-for-newbies-installing-ruby-and-getting-started--net-15116

* This API is built using Rails 5.1.3 and postgresql

* If you don't have it yet installed. You will need to have postgres up and running on your machine. Instructions: http://postgresguide.com/setup/install.html


* To call the endpoints as displayed you will need to install httpie: https://httpie.org/

*  Otherwise you can use a curl request "https: http://localhost:3000/'rest_of_end_point"

* run  "bundle install" from the commandline

* run rake db:create to generate the database from the datbase.yml file.

* run rake db:migrate to run the migrations and setup the database tables

* Download the dump.sql file that should be provided. Then login to postgresql from the commandline

* Run the command "psql databasename < 'data_base_dump_file'"

* Exit out.

* You can now run the command "rails s" to start the rails server and follow these instructions to call the endpoints: https://github.com/Joelio7/red_venture_api_tool/wiki/API-Documentation

* You can run the rspec tests using bundle exec rspec

* Thats it!
