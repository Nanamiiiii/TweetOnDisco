require 'discordrb'
require 'twitter'
require 'dotenv'

Dotenv.load

def twitter_init()
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV["TWITTER_CS_KEY"]
    config.consumer_secret = ENV["TWITTER_CS_SEC"]
    config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_SEC"]
  end
  puts 'Connected to Twitter'
end

twitter_init()

TOKEN = ENV["DISCORD_TOKEN"]
CLIENT_ID = ENV["DISCORD_CLI_ID"]
bot = Discordrb::Commands::CommandBot.new token: TOKEN, client_id: CLIENT_ID, prefix: "!"

bot.command :tweet do |event,text|
  res = text + " とツイートします"
  @client.update(text)
  puts 'Tweet successful: ' + text
  event.respond res
end

bot.run
