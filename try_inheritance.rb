module Intern
  def self.katappa
    print 'Maine nahi mara'
  end
end

module Student
  def self.katappa
    print 'Maine hi mara'
  end
end

module Child
end

class Me
  include Intern, Student, Child
end

class You
  extend Intern
  #include Student
end

#puts Me.ancestors
#puts Me.new.katappa
puts You.new.katappa
#puts You.katappa
