grocery_list = ["carrots", "toilet paper", "apples", "salmon", "eggplant"]

#1. for each grocery list item, put an asterik next to the name, and use this as a method
def shop (list)
  list.each do |item|
  puts "*" + "#{item}"
  end
end

shop (grocery_list)

puts "oh no, we've forgotten rice, lets go back and get it"
grocery_list.push("rice")
shop (grocery_list)

#2. Output the total number of items on your list
puts "Now, you have #{grocery_list.length} items to collect"

#3 Check to see if your list includes "bananas". If it does, output "You need to pick up bananas".
# Otherwise, output "You don't need to pick up bananas today".

if grocery_list.include?("bananas") == true
    puts "on the list, You need to pick up bananas"
  else
    puts "NOT on the list, You don't need to pick up bananas today"
end

#4 Display the second item in the list
puts "the second item in the list is " + grocery_list [1]

#5 Sort grocery list alphabetically
puts "Lets sort it so we can shop in order"
shop (grocery_list).sort

#6 Delete Salmon, and re-display list
puts "Damn! can't find the salmon. Better luck next time"
grocery_list.delete("salmon")
shop (grocery_list)
