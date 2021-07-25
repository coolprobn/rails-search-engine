# Rails Search Engine with Elastic Search

## Clone the app

```cmd
    $ git clone git@github.com:coolprobn/rails-search-engine.git
```

## App Setup

### Install required Gems

```cmd
    $ cd rails-search-engine
    $ bundle install
```

### Database

From command line:

`rails db:setup`

This will create database, load the schema and seed the database with code inside `db/seeds.rb`

### Check seeded records

Go to rails console `rails c` and check the count of all records, you should have 2 authors, 5 categories and 4 articles.

Commands:

```cmd
    > Author.count
    => 2
    
    > Article.count
    => 4
    
    > Category.count
    => 5
```

## Full working code

"main" branch only includes code required for the basic app setup. Everything related tp app search with full functionality as shown in the tutorial blog is inside the branch "app-search"
