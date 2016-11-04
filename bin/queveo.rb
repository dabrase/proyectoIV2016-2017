# encoding: UTF-8
#!/usr/bin/env ruby
require 'telegram/bot'


class Bot

  attr_reader :token
  attr_accessor :bot
  def initialize(token)
    @bot=Telegram::Bot::Client;
    @token=token
  end
  def empezar
    @bot.run(@token) do |botox|
      botox.listen do |message|
      puts message.class
      case message.text
      when '/start'
        puts message.chat.id
        botox.api.send_message(chat_id: message.chat.id, text: "Hola, #{message.from.first_name}")
      when '/queveo'
        botox.api.send_message(chat_id: message.chat.id, text: ", #{message.text}")
      when 'circo'
        puts message.entities
        botox.api.send_message(chat_id: message.chat.id, text: "un circo que animaba el corazon, lleno de color")
      when '/stop'
        botox.api.send_message(chat_id: message.chat.id, text: "Adios, #{message.from.first_name}")
      end
    end
    end
  end


  def validez_token
    @bot.run(@token) do |botox|
      return botox.api.get_me
    end
  end

end
