# Rails 1 - ActiveRecord Querying

This section of the evaluation will be focused on assessing your knowledge on
writing queries utilizing ActiveRecord. This portion of the evaluation is
estimated to take **25 minutes**.

**NB: Run `bundle install` before you get started.**

Next, set up the database:

    ./setup_db.sh

**If you run into a permissions issue, try running `chmod +x ./setup_db.sh`**

**IMPORTANT!!!!**
Run this script before writing any code or running any terminal commands besides
`bundle install`

If your `schema.rb` is emptied for any reason, copy over the contents of 
`schema copy.rb` into `schema.rb` and re-run the setup script. 

## Objective

The objective for this portion of the test is to pass the specs found in 
the `spec` directory

The problems will be found in the `problems/ar_queries.rb` file. There are 
10 total specs given in the `spec` directory. Your objective is to pass as 
many specs as possible.

## Running Specs

- `bundle exec rspec` to run the entire spec suite
- `bundle exec rspec spec/<spec_file_name>` to run all specs in a given spec
  file
  - for example: `bundle exec rspec spec/ar_queries_spec.rb`
- `bundle exec rspec spec/<spec_file_name>:<line_number>` to run the spec(s) in
  the block that contains the given line number of a given spec file
  - for example: `bundle exec rspec spec/ar_queries_spec.rb:101`

**Copyright App Academy, please do not post online**