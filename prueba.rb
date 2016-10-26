require_relative 'bin/queveo'

  bot= Bot.new(ENV["TOKEN"])
  bot.bot.run(ENV["TOKEN"]) do |botox|
    puts botox.api.get_me.class
  end

  puts datos_bot=bot.validez_token
  puts datos_bot["ok"]
  puts datos_bot["result"]["first_name"]
  puts datos_bot[:username]
