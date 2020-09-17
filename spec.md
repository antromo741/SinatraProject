# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
I used sinatra and built a ferret camp where users can pickup and drop off a ferret.

- [x] Use ActiveRecord for storing information in a database
Stored a bunch of users and ferrets with data in the database to be called upon when using the app.

- [x] Include more than one model class (e.g. User, Post, Category)
I have two models one user.rb and ferret.rb

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
A user has many ferrets

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
A ferret belongs to a User

- [x] Include user accounts with unique login attribute (username or email)
We have our emails to be unique in the users model

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
Our ferrets who belong to users has routes for crud and can only be modified by the user who registered the original ferret

- [x] Ensure that users can't modify content created by other users
A user cant modify a ferret created by another user

- [x] Include user input validations
If the user does not fill in a field or puts in something invalid it will redirect to the index page and give them an error message

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
We have our error messages when there is a mistake in the url and will be redirected to the home/index page if logged in

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
I have 33 commits right now and will have more when the last feature works

- [x] Your commit messages are meaningful
They let you know exactly what I changed and what the reason for changing is

- [x] You made the changes in a commit that relate to the commit message
Yes the commit message directly relates to the changes commited

- [x] You don't include changes in a commit that aren't related to the commit message
There are no changes commited that arent described
