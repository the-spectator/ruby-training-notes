def method(arg)
  #puts 'method start'
  yield(arg) if block_given?
  #puts 'method end'
end

def input(statement)
  print statement
  block_given? ? yield(gets.chomp) : gets.chomp
end

=begin
#method('Pune') { |var| puts "my city is #{var}" }
#method('aki') { |var| puts "my name is #{var}" }

method('Enter a string') do |arg|
  puts arg
  puts gets.chomp.class 
end

method('Enter a int')do |arg|
  puts arg
  puts gets.chomp.to_i.class 
end
=end

def myeach(arg)
  if block_given? == true
    i,len = 0,arg.length
    while i < len
      yield(arg[i])
      i+=1
    end
  end
end

def mymap(arr)
  if block_given?
    new_arr = []
    for element in arr
      new_arr << yield(element)
    end
    new_arr
  end
end

#myeach([1, 2, 3]) { |x| print x,' ' }
#myeach([1, 2, 3]) { |x| print x+3,' ' }
#numbers = [1, 2, 3, 4]
#puts "#{numbers} \nnumber+3"
#puts mymap(numbers) { |number| number+3 }
#puts 'number*3'
#puts mymap(numbers) #{ |number| number*3 }
puts input("print: ") {|x| x.to_i}.class 
