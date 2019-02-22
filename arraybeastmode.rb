puts "Welcome to the grocery list!"
grocerylist = []
3.times {
    puts "Add an Item:"
    item = gets.chomp.downcase
        case item
        when "icecream", "ice cream", "ice-cream"
            item = broccoli
            
    puts "How many would you like?" 
    quantity = gets.chomp.to_i
        while quantity == 0
            puts "That is not a valid quantity. Please try again:"
            quantity = gets.chomp.to_i
        end 
    grocerylist << [item, quantity]
end
}
puts grocerylist



