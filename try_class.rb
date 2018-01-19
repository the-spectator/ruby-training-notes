module Try
  def print_try
    puts 'Inside module'
  end
end

class Box 
  #attr_reader creates getter methods for every instance variable given to it
  #attr_setter creates setter methods for every instance variable given to it
  attr_reader :size, :color, :len
  attr_writer :size, :color, :len
  include Try
  def initialize
    @size = 1
    @color = 'red'
  end
  def print
    print 'method print'
    puts self
    puts @size,@color
  end
  def new_print
    print 'method new_method'
    puts size,color,@len
  end
  def set_color
    size = 34
    @len = 123
  end
end

class Rat
  attr_reader :name, :color, :abc
  @name = 'kartik'
  @color = 'colo'
  @@abc = 123
  def rat_attr
    puts @name,@color,@@abc
  end
  def self.print
    puts @name,@color,@@abc
  end
end

def rat_func
  obj = Rat.new
  #obj.rat_attr
  puts Rat.print 
  cat = Rat
  puts cat.print
end

def box_func
  obj = Box.new
  #Myclass.attr_reader
  obj.print
  obj.set_color
  obj.new_print
  puts obj.color
  obj.color = 'pink'
  obj.print
  obj.print_try
end

rat_func
