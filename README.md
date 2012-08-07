HomeHunter
===========
<Wittydescription>

Infastructure
=============
This is a Rails 3.2 app running on Ruby 1.9.3 and deployed to Heroku's Cedar Stack.  It is tested with RSpec and Cucumber which should be run before committing to the master branch.

All the passwords and API Keys should be in the ENV variables and not committed

Laptop Setup
============
Clone the app:

git clone git@github.com:bigbam505/homehunter.git

Set up the Heroku remotes:

git remote add staging git@heroku.com:homehunter-staging.git

git remote add production git@heroku.com:homehunter-production.git

Setup the app:

<todo>

Edit your .env file:

cp sample.env .env
vi .env [and edit]

Run the server on foreman:

foreman start -p 3000
[You should use foreman as foreman picks up on the .env file]

Go to the server:

http://localhost:3000

