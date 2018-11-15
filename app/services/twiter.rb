
require 'twitter'
require 'awesome_print'

class Twiter

	def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key         = Rails.application.credentials[:WITTER_API_KEY]
      config.consumer_secret      = Rails.application.credentials[:TWITTER_API_SECRET]
      config.access_token         = Rails.application.credentials[:ACCESS_TOKEN]
      config.access_token_secret  = Rails.application.credentials[:ACCESS_TOKEN_SECRET]
    end

	end
	def perform
a = ["@Saghour4","@BoumedieneSalim"]
a.each{|name| @client.update("#{name} Coucou bg droite droite")}
	end
end