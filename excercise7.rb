#1 create hash representing the number of students in past Bitmaker cohorts
students = { :cohort1 => 34, :cohort2 => 42, :cohort3 => 22 }
increased_cohort ={}

#2 Create a method that displays the name and number of students for each cohort,
def number (hash)
  hash.map do |key, value|
    puts "#{key} : #{value}"
  end
end

number(students)

#3 Add cohort 4, which had 43 students, to the hash.
students[:cohort4] = "43"
puts "#3 added cohort4"
number(students)

#4 Use the keys method to output all of the cohort names.
puts "#4 Cohort names are #{students.keys}"

#5 The classrooms have been expanded! Increase each cohort size by 5% and display the new results.
puts "#5 the classes have expanded by 5%:"
students.each do |key, value|
    value_increase = (value * 1.05).to_i
  puts "#{key}: #{(value_increase)}"
  increased_cohort[key]=value_increase
end

#6 Delete the 2nd cohort and redisplay the hash
increased_cohort.delete(:cohort2)
puts "# 6 oh no, cohort 2 has been cancelled, here are the cohorts"
puts increased_cohort

#7 BONUS: Calculate the total number of students across all cohorts using each and a variable
# to keep track of the total. Output the result.
total = 0
increased_cohort.each do |key, value|
  total = total + value #+=
end

puts "#7 Total students in cohort after the 5% increase and cancellation is #{total}"
