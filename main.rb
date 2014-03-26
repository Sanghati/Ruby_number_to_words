require_relative './number_to_words'

puts "Enter the number : "
my_num = gets.chomp
array_of_number = my_num.to_s.split("")
len = array_of_number.length
cpos = len
conv = Number_to_words.new
conv.converter(array_of_number,len,cpos)
