require 'discordrb'

bot = Discordrb::Bot.new token: 'ODEwOTEyNDUzNTU4Nzk2MzMx.YCqjEg.aMOckZf-LxDzWsVW00oC0e4UlOU'

SHUSH = "\u{1F92B}"
S = "\u{1F1F8}"
H = "\u{1F1ED}"
bot.message(with_text: /[\WA-Z]*[A-Z]+[\WA-Z]*/ ) do |event|
	message = event.message
	message.react S
	message.react H
	message.react H
	message.react SHUSH
end

bot.run
