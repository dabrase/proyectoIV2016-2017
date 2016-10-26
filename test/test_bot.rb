require 'test/unit'
require 'shoulda'

require_relative '../bin/queveo'


#Ahora mismo los test son muy básicos más adelante se añadiran
#test con el objetivo de testear al bot midiendo sus ouputs en función de inputs que recibe de un "usuario"
class BotTest < Test::Unit::TestCase

  context "Testea funciones \"completas\  del bot tal si un usuario le manda x el bot responde y" do
    setup do
      @bot= Bot.new(ENV["TOKEN"])
     end

     should "El bot es capaz de crearse correctamente, funcionan las variables de entorno para las tokens" do
       assert_equal ENV["TOKEN"], @bot.token
     end
     should "Validez token" do
         datos_bot=@bot.validez_token
         assert_equal datos_bot["ok"], true

     end
     should "Validez datos bot" do
         datos_bot=@bot.validez_token
         assert_equal datos_bot["result"]["id"], 299934959
         assert_equal datos_bot["result"]["first_name"], "queveo"
         assert_equal datos_bot["result"]["username"], "queveobot"
     end
   end



end
