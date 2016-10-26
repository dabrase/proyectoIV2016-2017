#!/usr/bin/ruby
require 'net/http'
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'mechanize'
require "resolv-replace.rb" 
require 'json'



agent= Mechanize.new

pelicula=ARGV[0]


$i = 1
$num = ARGV.length

while $i < $num  do
#   pelicula = pelicula + " " + ARGV[$i]
   $i +=1
end

pelicula=""

ARGV.each{|string|
   pelicula = pelicula + " " + string

}
puts pelicula
uri = URI('https://www.tastekid.com/api/similar')
params = { :q => pelicula, :k => '225125-Bot-P5GX8YYW' }
uri.query = URI.encode_www_form(params)

page = Net::HTTP.get(uri)

my_hash = JSON.parse(page)

keys = my_hash.keys


x=0
puts "Sugerencias:"
my_hash.each do |key, array|

  array.each{|x| 

    x.each{|key|

	
		if x==1
		key.each{ |y|

			puts y["Name"]



		}
		end

		if key == "Results"
			x=1;
		end
     }


}



end


