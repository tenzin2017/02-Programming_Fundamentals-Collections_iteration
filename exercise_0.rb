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
 puts message_repeat = ["I will not skateboard in the halls"]*20


#array of no from 1 to 50
num_arr =[*1..50]

puts num_arr

#each loop to find sum
sum = 0
num_arr.each do |num|
  sum = sum + num
end
puts sum

#array with three of each
new_arr = []
num_arr.map do |num|
  puts new_arr = [[num]*3]
end

#array of contries that are not island from ex-6a
country_list_not_island = []
country_list.each do |v|
  if v.has_value?("No")
   puts country_list_not_island = [v]
  end
end


#Exercise-7
#annual expenses approximation

expenses = [250, 7.95, 30.95, 16.50]
total_expenses = 0
expenses.each do |exp|
  total_expenses = total_expenses + exp
end
puts "total expenses in a year is $ #{total_expenses}"
