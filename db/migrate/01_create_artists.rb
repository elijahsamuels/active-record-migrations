# db/migrate/01_create_artists.rb

class CreateArtists < ActiveRecord::Migration[5.2]
    # method to define the code to execute when the migration is run
    def up
    end

    # method to define the code to execute when the migration is rolled back
    def down
    end

    # left we've given the data type we'd like to cast the column as, and on the right, we've given the name we'd like to give the column. The only thing that we're missing is the primary key. Active Record
    def change
        create_table :artists do |t|
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
        end
    end


end
  


# Run rake -T to see the list of commands we have.

# rake db:create              # Creates the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:create:all to create all databases in the config). Without RAILS_ENV or when RAILS_ENV is dev...
# rake db:create_migration    # Create a migration (parameters: NAME, VERSION)
# rake db:drop                # Drops the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:drop:all to drop all databases in the config). Without RAILS_ENV or when RAILS_ENV is developme...
# rake db:environment:set     # Set the environment value for the database
# rake db:fixtures:load       # Loads fixtures into the current environment's database
# rake db:migrate             # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
# rake db:migrate:status      # Display status of migrations
# rake db:rollback            # Rolls the schema back to the previous version (specify steps w/ STEP=n)
# rake db:schema:cache:clear  # Clears a db/schema_cache.yml file
# rake db:schema:cache:dump   # Creates a db/schema_cache.yml file
# rake db:schema:dump         # Creates a db/schema.rb file that is portable against any DB supported by Active Record
# rake db:schema:load         # Loads a schema.rb file into the database
# rake db:seed                # Loads the seed data from db/seeds.rb
# rake db:setup               # Creates the database, loads the schema, and initializes with the seed data (use db:reset to also drop the database first)
# rake db:structure:dump      # Dumps the database structure to db/structure.sql
# rake db:structure:load      # Recreates the databases from the structure.sql file
# rake db:version             # Retrieves the current schema version number