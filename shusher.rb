require "discordrb"
require "sinatra"
require "rubygems"

bot = Discordrb::Bot.new token: ENV["SHUSH_TOKEN"]

SHUSH = "\u{1F92B}"
POPPER = "\u{1F389}"

bot.message(with_text: /[\WA-Z_]*[A-Z]+[\WA-Z_]*/ ) do |event|
	message = event.message
	num = rand(3)
	if event.user.username == ENV["SHUSH_USER"]
		message.react SHUSH		
	elsif num == 2
		message.react POPPER
	end
end

bot.run
