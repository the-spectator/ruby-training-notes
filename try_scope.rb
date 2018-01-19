module A
  ABC = 1
  module B
    ABC = 2
  end
end

class Test
  include A
end

#puts A::B::ABC
#puts A::ABC
puts Test.ancestors
