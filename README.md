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

Running tests
==============

<todo>

Development Process
===================

To run the app in development mode, use Foreman.
foreman start -p 3000
It will pick up on the Procfile and use Thin as the app server instead of Webrick, which will also be used by
Heroku's Cedar stack.
gem install git_remote_branch
git pull --rebase
grb create feature-branch
rake

This creates a new branch for your feature. Name it something relevant. Run the tests to make sure
everything's passing. Then, implement the feature.
rake
git add -A
git commit -m "my awesome feature"
git push -u origin feature-branch
Open up the Github repo, change into your feature-branch branch. Press the "Pull request" button. It should
automatically choose the commits that are different between master and your feature-branch. Create a pull
request and share the link in Campfire with the team. When someone else gives you the thumbs-up, you can
merge into master:
git fetch origin
git rebase origin/master
git checkout master
git merge --ff-only feature-branch # If this fails, ensure rebasing worked.
git push origin master

