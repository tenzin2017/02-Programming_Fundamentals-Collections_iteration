#Exercise-10
num_list = (1..100)
num_list.each do |num|
  if num % 3 == 0 && num % 5 != 0
    puts "Bit"
  elsif num % 5 == 0 && num % 3 != 0
    puts "Maker"
  elsif num % 3 == 0 && num % 5 == 0
    puts "BitMaker"
  else
    puts num
  end
end

#Exercie-11
def pizza
  puts "How many pizzas do you want to order ?"
  quantity = gets.chomp.to_i
  quantity.times do |order_no|
    puts "How many toppings for pizza #{order_no + 1}"
    topping_quantity = gets.chomp.to_i
    puts "You have ordered a pizza with #{topping_quantity} toppings"
  end
end

pizza
