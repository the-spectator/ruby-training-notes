class Intern
  def initialize
    @a = 2
    @b = 1
  end
end

class Me < Intern
  attr_reader :gg
  def initialize
    @gg = 44
  end
end

module A
  class Me
    attr_reader :gg
    def initialize
      @gg = 1
    end
  end
end

class You
  def print
    p Me.new.gg
    p Me.ancestors
  end
end

#You.include A
#p Me.ancestors
#p You.new.print

class Rest
end

obj = Rest.new
#obj.include A
obj.extend A
