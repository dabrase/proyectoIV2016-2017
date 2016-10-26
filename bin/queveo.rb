#!/usr/bin/env ruby
require 'telegram/bot'


token = ENV["token"]




class Bot

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

  def automensaje
    @bot.run(@token) do |botox|
        botox.api.send_message(chat_id: 94337652, text: "Adios, adios")
      end
  end




  def hola

    "hola"
  end
end
