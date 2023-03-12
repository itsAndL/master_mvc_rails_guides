# here we have a method call
def my_hello (subject)
  "hello all of you #{subject}"    
end

# here we have lambda blocks 
# that raise an error if you didn't provide the arguments 
my_hello1 = -> (subject) do
  "hello all of you #{subject}"    
end

my_hello2 = lambda do |subject|
  "hello all of you #{subject}"    
end

# here we have proc block
# if you didn't provide the argumnets, it just gonna assign to them the nil value
my_hello3 = proc do |subject|
  "hello all of you #{subject}"    
end

puts my_hello "Team"
puts my_hello1.call("Team")
puts my_hello2.call("Team")
puts my_hello3.call("Team")


puts "\n\n=====================================================================\n\n"


def method(name, &body)
    puts "Welcome #{name}!"
    body.call(name.length)
end

method "Tim Corey" do |size|
    puts "#{size} is my size guys!"
end

body = lambda { |size| puts "I like the number #{size}" }

method "Tim Corey", &body
method "Tim Coret", &lambda { |size| puts "I like the number #{size}" }