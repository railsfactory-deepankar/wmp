require 'sinatra'
require './roman.rb'
require './numbers.rb'
require './spell_digit.rb'
require './Bengali.rb'
get '/page' do 
month  =   params['month'].to_i
day = params['day'].to_i
year = params['year'].to_i
page =    File.read('./cal.html')
d =''
if day !=0 && month !=0 && year !=0
t = Time.new( year , month , day)
d = t.strftime('%A')
e = Bengalicalendar.convert(d)
end

page =  page + " " +  month.to_s + " " + Numbers.convert(day) + " " +  Roman.convert(year) + Spell_digit.convert(year) + d.to_s + e.to_s
end


