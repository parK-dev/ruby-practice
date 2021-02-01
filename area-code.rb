cities = {
	"Valdor" => "819",
	"Montreal" => "514",
	"Quebec" => "418",
	"Rimouski" => "581",
	"New-York" => "212",
	"Miami" => "305",
	"Nagoya" => "001"
}

def get_cities(cities)
	puts cities.keys
end

def get_area_code(cities, key)
	cities[key]
end

puts "Welcome to our lookup tool for area codes."
25.times {print "-"}
puts

loop do
	puts "Would you like to lookup the area code for a city? (Y/N)"
	input = gets.chomp.downcase
	puts
	break if input != "y"
	get_cities(cities)
	puts
	puts "Which city would you like to lookup?"
	input_city = gets.chomp
	if cities.include?(input_city)
		puts "The area code of #{input_city} is #{get_area_code(cities, input_city).}"
	else
		puts "The city entered is not in our records."
	end
end