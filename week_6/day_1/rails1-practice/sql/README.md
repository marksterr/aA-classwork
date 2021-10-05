# SQL Assessment

## Instructions

**Do not share this repo or post it publicly. We will take violations
very seriously.**

Fill in the required SQL in the `lib/test.rb` file. The spec file (run with 
`bundle exec rspec`) will check your work. Remember that you can run 
individual specs by including the line number at the end (e.g. run 
`rspec spec/test_spec.rb:21`). You may wish to use the command-line postgres 
program to interactively experiment with SQL, but this is not required. Please 
do not use the internet.

Run the following script in the SQL home directory to setup the DB:

    data/import_cat_db.sh

If your DB gets corrupted somehow, you can always rerun `data/import_cat_db.sh`
to restore the DB.

Database: `cats` have a name, color, and breed.  `toys` have a name, color, and
price.  `cat_toys` is a joins table that references the `cats` table with the 
foreign key of `cat_id` and the `toys` table with the foreign key of `toy_id`.

After 20 minutes (or upon completion), we (very strongly) suggest you
move on to other parts of Rails One. You may of course return to the SQL portion
after completing the other parts of the test

## Notes

1. Result ordering matters; the spec will enforce this.
2. Make sure to terminate postgres commands with semicolons, otherwise
   they don't execute.
3. Ask for help if you get stuck!
4. Good luck!

**Copyright App Academy, please do not post online**