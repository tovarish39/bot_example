# frozen_string_literal: true

require 'telegram/bot'

token = ENV['T_BOT_5'] # 'YOUR_TELEGRAM_BOT_API_TOKEN'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      5.times do
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
      end
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end
