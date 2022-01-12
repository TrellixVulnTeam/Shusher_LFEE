require "discordrb"
require "sinatra"
require "rubygems"

bot = Discordrb::Bot.new token: ENV["SHUSH_TOKEN"]

SHUSH = "\u{1F92B}"
POPPER = "\u{1F389}"

bot.message(with_text: /[\WA-Z_]*[A-Z]+[\WA-Z_]*/ ) do |event|
	message = event.message
	puts event.user
	puts event.user.username
	if event.user == "abnoormality#7816" || event.user == "boycryptid#8398"
		message.react SHUSH		
	else
		message.react POPPER
	end
end

bot.run
