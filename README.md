# TweetOnDisco
This is discord bot tweeting text sent on text channel. 

## How to use
```
bundle install --path vendor/bundler

$ echo 'TWITTER_CS_KEY = "<--YOUR TWITTER API KEY-->"' >> .env
$ echo 'TWITTER_CS_SEC = "<--YOUR TWITTER API SECRET-->"' >> .env

$ echo 'TWITTER_ACCESS_TOKEN = "<--YOUR TWITTER ACCESS TOKEN-->"' >> .env
$ echo 'TWITTER_ACCESS_SEC = "<--YOUR TWITTER ACCESS SECRET-->"' >> .env

$ echo 'DISCORD_TOKEN = "<--YOUR DISCORD BOT TOKEN-->"' >> .env
$ echo 'DISCORD_CLI_ID = "<--"YOUR DISCORD CLIENT ID-->"' >> .env

$ bundle exec ruby main.rb
```
