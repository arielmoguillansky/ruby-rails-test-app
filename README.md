# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ### 2.7.0p0

* Rails version
  ### 7.0.2.3

* System dependencies
  - 

* Configuration
  
  1. Make sure you are using app's ruby version..  `rvm install 2.7.0` and `rvm use 2.7.0`
  2. `bundle install`
  3. `rails server` or `rails s -b [port number]`


* Database creation

  #### Using scaffold

  1. To initialize a Database, create a scaffold with `rails generate scaffold {table name} [field_name]:[type]`
  2. Then migrate db executing `rails db:migrate`

  #### From scratch

  1. create migration `rails generate migration create_[table name plural]`
  2. On the migration file inside migrate folder, update create class adding fields
  3. Then migrate db executing `rails db:migrate`
  4. If want to update the table, execute `rails db:rollback` to drop the created table in the migration and add fields on the migrate field and the rerun `rails db:migrate`
  5. Best practices indicate to generate a new migration file firts each time db changes needed `rails generate migration add_[field name]_to_[table name]`, and then on the migration file, `add_column :[table name], :[new field name], :[type]`
  6. Run `rails db:migrate`

  1. Create model file

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

  Production site is manage by Heroku