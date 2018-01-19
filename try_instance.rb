class Restaurant
  @open = true
  #attr_accessor :name, :rating
  def initialize
    @name = 'Akshay'
    @rating = 5
  end
  def self.open
    puts @open,@name
  end
end

flav = Restaurant.new
def flav.print
  puts @name, @rating
end

flav.print
Restaurant.open
