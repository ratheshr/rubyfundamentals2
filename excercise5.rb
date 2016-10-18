=begin
Create a method that converts Fahrenheit temperatures to Celsius in a file called exercise5.rb.

Your method should:
have one parameter: the temperature in Fahrenheit
do the conversion with this formula: C = (F - 32) x 5/9
ensure that the parameter you pass in is a number by converting it with to_i
Output the result in a full sentence using string interpolation.
=end

#fetching temperature in fahrenheit and assigning it to an integer variable
puts "Hi, What's the temperature today in Fahrenheit?"
fahrenheit = gets.chomp.to_i

#defining a method which has one parameter, f. it returns the value given by the formula
def converttemp (f)
  return (f-32) * (5/9.0)
end

#We can now apply the new method to the given temperature
celcius = converttemp (fahrenheit)
puts "Thanks, but we are not in the USA, the temperature today is #{celcius} degrees celcius!"
