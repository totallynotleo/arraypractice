puts "Hello! Please add an item to the grocery list:"
    puts "Type done when finished."
list = []

while list.include?("Done") != true do #while loop to allow as many items as they want 
    item = gets.chomp.capitalize 
        #^^means everything else has to be capitalized but it looks nicer
    if item == "Done" #Janky workaround to allow for the while loop to close
        list << "Done" #basically works around the addition of quantity
    else
        puts "Please enter a quantity"
        quantity = gets.chomp.to_i
        while quantity == 0 
            puts "That's not a valid quantity, Please try again:"
        quantity = gets.chomp.to_i
        end
    system"clear" 

    puts "Type done to quit."
    puts "Add another item:"    
    #secretly substituting ice-cream for broccoli
        case item 
            when "Icecream", "Ice cream", "Ice-cream"
            item = "Broccoli"
            list << "#{item} x#{quantity}"
        else
        list << "#{item} x#{quantity}"
    end
    end
end
list.delete("Done") #deleting "Done" from the list
system"clear" #tidying up the screen

#Final Output
puts "Your list contains #{list.count} items."
puts "Here is your list of groceries:"
    puts list.sort 
  

