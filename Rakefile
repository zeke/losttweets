# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'


namespace :bootstrap do
  desc "Create tweets from Twitter API."
  task :import_tweets => :environment do
    
    1.upto(20) do |page|
      tweets = HTTParty.get "http://twitter.com/statuses/user_timeline/zeke.json?count=200&page=#{page}"
      tweets.each do |tweet|
        Tweet.create!(
          :text => tweet['text'],
          :tweeted_at => tweet['created_at'],
          :tid => tweet['tid']
        )
      end
      break if tweets.size < 199
    end

  end

end