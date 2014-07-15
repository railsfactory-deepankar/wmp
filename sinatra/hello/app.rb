require 'sinatra'
require './roman.rb'
require './numbers.rb'
get '/page' do 
month  =   params['month']
day = params['day']
year = params['year']
page =    File.read('./calender.html')
str =  month.to_s  + " " + day.to_s + " " + year.to_s 
s = Roman.convert(year)
r = Numbers.convert(day)
page =  page + " " +  month.to_s + " " + r.to_s + " " + s.to_s  # unless name.nil?

end


