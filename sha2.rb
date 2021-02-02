#I will use this file to try and test out the SHA2 hashing in ruby
require "digest/bubblebabble"


puts "Please enter a password"
password = gets.chomp
password = Digest::SHA256.bubblebabble(password)
puts password
puts "Please enter the same password"
password2 = Digest::SHA256.bubblebabble(gets.chomp)
if password2 == password
    puts password2
    puts "Well done."
else
    puts "It doesn't work as intended."
end