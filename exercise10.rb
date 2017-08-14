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


#Exercise-12
#concatenating two arrays
fav_colours = ["green", "yellow", "blue", "white"]
fav_artist= ["Richard Gere", "Tom Cruse", "Amir Khan"]
ages = [ 40, 55 ]
fav_combine = fav_colours + fav_artist
puts fav_combine

#display message for pair of new arrays
ages = [ 40, 55 ]
fav_artist.each do |artist|
  puts " I love #{artist} #{ages[0]}"
  puts " I love #{artist}  #{ages[1]}"
end

#new array of ages increased by 1
ages_family = [ 31, 27, 70, 45]
ages_family_new = []
ages_family.map do |age|
  age = age + 1
  ages_family_new << age
end
puts ages_family_new


#reduce method to add up ages of the family
puts "The total sum of ages of the family members is = #{ages_family_new.reduce(:+)}"


#use select on coin flips array to make new array
flip_coin = ["head", "tail", "head", "head", "tail"]

flip_coin_head = []
flip_coin.select do |outcome|
  if outcome == "head"
   flip_coin_head << outcome
 end
 end

 puts flip_coin_head.inspect



#Exercise-13
my_dogs = [ {:name => 'Ralph', :position => 5},
           {:name => 'Cindy', :position => 8},
           {:name => 'Jade', :position => 11}]

#get_absent_gods method to see which dogs left backyard
def get_absent_dogs(my_dogs)
   absent_dog = []
   my_dogs.each do |hash|
  if hash[:position] > 10
     absent_dog << hash[:name]
  end
end
return absent_dog
end

absent_dog = get_absent_dogs(my_dogs)
puts absent_dog.inspect


#Calling absent dog
def call_absent_dogs(absent_dog)
  absent_dog.each do |name|
     puts "Come back, #{name}!"
  end
end

puts call_absent_dogs(absent_dog)

#calling neighbour's dogs
neighbour_dogs = ["Roxy", "Tiger", "Winner"]
puts call_absent_dogs(neighbour_dogs)




#Exercise-14
#using select method instead of each
def get_absent_dogs_select(my_dogs)
   absent_dog = []
   my_dogs.select do |hash|
  if hash[:position] > 10
     absent_dog << hash[:name]
  end
end
return absent_dog
end

puts get_absent_dogs_select(my_dogs).inspect

#increasing position of dogs while chasing after squirrel

roc = my_dogs.map! do |dog|
   puts  dog[:position] + 5
end

puts roc
