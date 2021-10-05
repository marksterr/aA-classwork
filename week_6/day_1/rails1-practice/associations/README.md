# Rails 1 - Associations

This section of the evaluation will be focused on assessing your knowledge on
writing ActiveRecord associations. This portion of the evaluation is
estimated to take **30 minutes**.

**NB: Run `bundle install` before you get started.**

Next, set up the database:

    ./setup_db.sh

**If you run into a permissions issue, try running `chmod +x ./setup_db.sh`**

**IMPORTANT!!!!**
Run this script before writing any code or running any terminal commands besides
`bundle install`

If your `schema.rb` is emptied for any reason, copy over the contents of 
`schema copy.rb` into `schema.rb` and re-run the setup script. 

**Instructions** 

Welcome to VideoTube. You've been tasked to create a website for users to upload their favorite videos, as well as to like and comment others' videos.

Your task today is to build the relationships between all of these
models. The database has already been setup and the models have been
annotated with their respective table schemas.

## Assignment

The specs (`bundle exec rspec`) will guide you through building a
series of associations. Refer to the `db/schema.rb` file to find the
format of the database; this will especially help you find the name of
foreign keys.

I would start by building `has_many`, `belongs_to` and `has_one`
associations. I would later build the `has_many :through`
associations.

## Brief Description

Make sure to be looking at the specs and the `db/schema.rb`. Part of
your job is to be able to understand the structure and interrelations
of the data from these sources.

We provide a brief overview. Users of this site upload videos. Every user can leave likes and/or comments on each video.

**Copyright App Academy, please do not post online**