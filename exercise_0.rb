# list of different arrays of question 1

fav_colours = ["red", "green", "yellow", "blue", "white"]
family_ages = [ 31, 40, 27]
flip_coin = ["head", "tail", "head", "head", "tail"]
fav_artist= ["Richard Gere", "Tom Cruse", "Amir Khan"]
fav_colour_sym = [:green, :blue, :white]

# list of hash of question 2
words_def = { :honest => "free of deceit and untruthfulness", :karma => "destiny or fate,following as effect from cause", :ethics => "moral principles that govern a person's behaviour or the conducting of an activity" }
fav_movies = {"Cast Away" => 2000, "Gladiator" => 2000, "Baby's Day Out" => 1994}
populated_city = { "Tokyo" => 37833000 , "Delhi" => 24953000 , "Shanghai" => 22991000}
family_name = { "Gonpo" => 40, "Dolma Sonam" => 27, "lobsang" => 12 , "Dolma Yangzom" => 70}

#Exercise 1
puts flip_coin

puts fav_colours.first

puts family_ages.sort

puts family_ages.push(0)

puts fav_movies["Cast Away"]

#Exercise-2
puts fav_colours.last

populated_city["Mexico"] = 20843000
puts populated_city

flip_coin.reverse!
puts flip_coin

puts populated_city["Delhi"]

fav_artist.each do |artist|
  puts " I think #{artist} is great"
end

#Exercise-3
puts fav_artist[0..1]

fav_movies.each do |movie, year|
  puts " #{movie} came out in #{year}"
end

puts family_ages.sort.reverse

fav_movies["Beauty and the Best"] = 1991,2017
puts fav_movies

#Exercise-4
family_ages.each do |age|     #printing ages < 30
  if age < 30
    puts age
  end
end

puts family_ages.max    # printing the oldest age

# count = 0
# flip_coin.each do |coin|     # counting heads in coin flip
#   if coin == "head"
#     count = count + 1
#   end
#    return count
#  end

 puts fav_artist.delete(1)   #delete one artist

 puts populated_city["Tokyo"] = 37833001  #population changed


 #Exercise-5
 puts populated_city.values.inject {|a, b| a +b}  #sum total population

 family_name.each do |name,age|    #yound or old
   if age < 30
     puts " #{name} is young"
   else
     puts " #{name} is old"
   end
 end

 puts fav_colours.last(2)    # print last two colours

 puts family_ages.map { |age| age += 1}  # increase age by 1

 puts fav_colours.push("black","grey")  # adding 2 new colours


 #Exercise-6a
# hash with key as arrays
 movie_list = { ["The Matrix", "Star Wars:Episode-1", "The Mummy"] => 1999, ["Avatar", "Star Trek", "District 9"] => 2009, ["How to Train Your Dragon", "Toys Story 4", "Star Wars: Episode-9"] => 2019}

# array inside array
phone_keypad = [[1,2,3], [4,5,6], [7,8,9], ["*", 0, "#"]]
# array containing hash
 country_list = [ {"country name" => "Tibet", "continent" => "Asia", "island" => "No"},
           {"country" => "Canada", "continent" => "North America", "island" => "No"},
           {"country" => "Australia", "continent" => "Australia", "island" =>"Yes" }]


#Exercie-6b
#display msg 20 times
20.times do
  puts "I will not skateboard in the halls"
end

#array with repeating msg
 new_arr_msg = []
 string = "I will not skateboard in the halls"
 20.times { new_arr_msg << string}
 puts new_arr_msg.inspect


#array of no from 1 to 50
num_arr =[*1..50]

puts num_arr.inspect

# #each loop to find sum
sum = 0
num_arr.each do |num|
  sum = sum + num
end
puts sum

# #array with three of each
new_arr = num_arr.flat_map do |num| [num]*3
end
puts new_arr.inspect


# #array of contries that are not island from ex-6a
country_list_noisland = []
country_list.each do |country|
  if country["island"] == "No"
     country_list_noisland << country
  end
end
puts country_list_noisland.inspect

#Exercise-7
#annual expenses approximation

expenses = [250, 7.95, 30.95, 16.50]
total_expenses = 0
expenses.each do |exp|
  total_expenses = total_expenses + exp
end
puts "total expenses in a year is $ #{total_expenses}"

# defining method to find total expenses
def total_exp(expenses)
     total = 0
     expenses.each do |price|
      total = total + price
     end
     return total
end

#Exercise-8
grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
grocery_list << "rice"

def arr_grocery(grocery_list)
  grocery_list.map! do |item|
    "* #{item} \n"
end
end


#defining method for adding new grocery items
grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
def add_item(grocery_list,item)
  grocery_list << item
end

# total no of items
puts grocery_list.length

#checking is banana in the list
  if grocery_list.include?("banana")
    puts "You  to pick up bananas"
  else
    puts "You need to pick up bananas"
  end

#displaying 2nd item in grocery_list
puts grocery_list[1]

#sort the list and output with *
puts grocery_list.sort
puts arr_grocery(grocery_list.sort)

#delete salmon from list and display
grocery_list.delete("salmon")
puts grocery_list
