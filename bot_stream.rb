require 'twitter'


client = Twitter::REST::Client.new do |config|
	config.consumer_key = " "
	config.consumer_secret = " "
	config.access_token = " "
	config.access_token_secret = " "
end

topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
	puts object.text if object.is_a?(Twitter::Tweet)
end