# Rails Search Engine with Elastic Search

You can read the blog [here](https://prabinpoudel.com.np/articles/search-engine-with-rails/)

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

## Fully working code

Fully working code is in the branch `app-search`.

You can find the pull request with the changes for app-search [here](https://github.com/coolprobn/rails-search-engine/pull/1)
