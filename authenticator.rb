users = [
    {username: "Kirk", password: "Wellan"},
    {username: "Chieri", password: "Sora"},
    {username: "Sora", password: "Chieri"},
    {username: "Sonya", password: "Martin"},
    {username: "Martin", password: "Sonya"},
]
def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record [:username] == username && user_record[:password] == password
            puts "You are now logged in."
            return user_record            
        end
    end
    puts "Wrong username or password."
end

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 5
    puts "Username: "
    username = gets.chomp
    puts "Password: "
    password = gets.chomp

    auth_var = auth_user(username, password, users)
    puts auth_var

    puts "Press n to quit or any other key to continue"

    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You have exceeded the number of attempts." if attempts = 5