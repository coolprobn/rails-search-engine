author_john = Author.create!(first_name: 'John', last_name: 'Doe', email: 'john@email.com', nickname: 'john101')

author_jane = Author.create!(first_name: 'Jane', last_name: 'Jones', email: 'jane@email.com', nickname: 'marvellous.jane')

Category.create!(
  [
    {
      title: 'ruby'
    },
    {
      title: 'rails'
    },
    {
      title: 'tutorial'
    },
    {
      title: 'factory-bot'
    },
    {
      title: 'quick-note'
    }
  ])

category_rails = Category.find_by(title: 'rails')
category_ruby = Category.find_by(title: 'ruby')
category_tutorial = Category.find_by(title: 'tutorial')
category_quick_note = Category.find_by(title: 'quick-note')
category_factory_bot = Category.find_by(title: 'factory-bot')

articles_of_john = author_john.articles.create!(
  [
    {
      title: 'Update Multiple Records at Once in Rails',
      content: "Rails provides a built-in create method for adding multiple records in single line of code or in more technical term “batch create”. For update, if we want to update attributes with same value for all available records then we can do so with the method update_all.\n\nBut what if we want to update multiple attributes at once and for multiple records? How do we “batch update” in Rails?\n\nWe will be looking at the answer to that question today in this blog.\n",
      published_on: DateTime.new(2021, 7, 18, 12, 34),
      category_ids: [category_rails.id, category_quick_note.id]
    },
    {
      title: 'Build Twitter Bot with Ruby',
      content: "Today, we will be building a bot for Twitter that will retweet all hashtags related to #ruby or #rails. We can also configure it to retweet any hashtags so you can use this tutorial to create bot that can retweet whatever hashtag you want. Yes, and we will be building this Twitter bot with Ruby.\n\nWe will be using Twitter gem (Github) to help us in getting up and running quickly with Twitter APIs.\n",
      published_on: DateTime.new(2021, 4, 23, 5),
      category_ids: [category_ruby.id, category_tutorial.id]
    }
  ])

articles_of_jane = author_jane.articles.create!(
  [
    {
      title: 'Live Stream Logs to Browser with Rails',
      content: "Live streaming log files have fascinated me for a long time now. I saw the use of live streaming log when I deployed an app in Netlify for the first time. While deploying, Netlify displays the server log right in the browser so that as a user, we know what’s happening in the background.\n\nIf you are confused on what I am talking about right now, you can also replicate that behavior if you open the log file with the command tail -f prepended to the file name like this: tail -f log/development.log\n\nNow if you fire the rails server and access any route, that changes will be appended to the file and shown in the bash where we have opened log/development.log.\n",
      published_on: DateTime.new(2021, 6, 20, 20),
      category_ids: [category_rails.id]
    },
    {
      title: 'Setup Factory Bot in Rails',
      content: "Factory Bot is a library for setting up test data objects in Ruby. Today we will be setting up Factory Bot in Rails which uses RSpec for testing. If you are using different test suite, you can view all supported configurations in the official github repository of Factory Bot.\n",
      published_on: DateTime.new(2021, 6, 13, 13),
      category_ids: [category_rails.id, category_factory_bot.id]
    }
  ])
