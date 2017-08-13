#creating hash of bitmaker students
students = { :cohort1 => 34, :cohort2 => 42, :cohort3 => 22}
puts students

#method to display cohort with corresponding no. of students
def cohort_data(students)
  students.each do |name, num|
    puts "#{name}:  #{num} students"
  end
end

puts cohort_data(students)

#add new cohort to the list
students[:cohort4] = 43
puts students

#output all the names of the hash
puts students.keys

#class size increaed by 5%
students_increased_five_percent= {}
students.map do |_cohort, student|
     students_increased_five_percent[_cohort] = student + 0.05* student
end
puts students_increased_five_percent

#delete 2nd cohort
 students.delete(:cohort2)
puts students

#total number of students across all cohort
total_cohort = 0
students.each do |_cohort, student|
  total_cohort = total_cohort + student
end


puts display(students)
