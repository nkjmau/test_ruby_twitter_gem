require 'twitter'
require 'dotenv/load'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

tweets = client.user_timeline(ARGV[0], :count => ARGV[1].to_i)
client.favorite(tweets)
