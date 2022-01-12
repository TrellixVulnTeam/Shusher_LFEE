require "discordrb"
require "sinatra"
require "rubygems"

bot = Discordrb::Bot.new token: ENV["SHUSH_TOKEN"]

SHUSH = "\u{1F4E3}"

bot.message(with_text: /[\WA-Z_]*[A-Z]+[\WA-Z_]*/ ) do |event|
	message = event.message
	message.react SHUSH
end

bot.run
