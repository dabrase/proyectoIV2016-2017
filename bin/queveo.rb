# encoding: UTF-8
#!/usr/bin/env ruby
require 'telegram/bot'
require_relative '../config/database'
require_relative '../lib/recomendacion/informacion_usuario'
class Bot

  attr_reader :token
  attr_accessor :bot
  def initialize(token)
    @bot=Telegram::Bot::Client;
    @token=token
    @db=Configuracion::Base_Datos.new('datos_usuario').db
  end
  def empezar
    @bot.run(@token) do |botox|
      botox.listen do |message|
        fecha_mensaje= @db.fetch "SELECT to_timestamp(#{message.date})"
        begin
      @db.from(:mensajes).insert(:message_id => message.message_id, :from => message.from.id,
          :date => fecha_mensaje, :id_chat => message.chat.id , :text => message.text)

      puts message.text
      case message.text
      when '/start'
        puts message.chat.id
        botox.api.send_message(chat_id: message.chat.id, text: "Hola, #{message.from.first_name}")
      when /^\/queveo.+/
        pelicula = message.text
        pelicula.slice! "/queveo "
        puts pelicula
        puts Integer(message.chat.id)
        usuario= Recomendacion::Informacion_Usuario.new(Integer(message.chat.id))

        recomendaciones=usuario.generar_recomendaciones(pelicula)

        puts recomendaciones.class
        puts recomendaciones.to_s

        puts recomendaciones.class
        puts message.text
        contador=1
        botox.api.send_message(chat_id: message.chat.id, text: "Las peliculas recomendadas para  #{pelicula} son:")
        recomendaciones.each{ |recomendacion|
          botox.api.send_message(chat_id: message.chat.id, text: "#{contador}º #{recomendacion}")
          contador=contador+1
        }

      when /^\/queveo$/
        botox.api.send_message(chat_id: message.chat.id, text: "Para obtener recomendaciones introducir:")
        botox.api.send_message(chat_id: message.chat.id, text: "/queveo titulo_pelicula")
        botox.api.send_message(chat_id: message.chat.id, text: "Proporciona peliculas que seguramente te gusten si te gustó titulo_pelicula")


      when 'circo'
        puts message.entities
        botox.api.send_message(chat_id: message.chat.id, text: "un circo que animaba el corazon, lleno de color")
      when '/stop'
        botox.api.send_message(chat_id: message.chat.id, text: "Adios, #{message.from.first_name}")
      else
        botox.api.send_message(chat_id: message.chat.id, text: "Para obtener recomendaciones de peliculas introducir:")
        botox.api.send_message(chat_id: message.chat.id, text: "/queveo titulo_pelicula")
        botox.api.send_message(chat_id: message.chat.id, text: "Proporciona recomendaciones basandose en titulo_pelicula")

      end
    rescue
      @db.from(:mensajes).where(:message_id => message.message_id).delete
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


b =Bot.new(ENV['TOKEN'])
b.empezar
