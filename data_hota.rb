# puts Time.methods.inspect
require 'date'

puts Time.now
puts DateTime.now

puts Time.now.strftime("%d/%m/%Y")
puts Time.now.sunday?
puts Time.now.to_a.inspect
