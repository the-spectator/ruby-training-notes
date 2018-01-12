a = 1
def procmethod
  obj = Proc.new {a = 99 } #{puts a} it will not work as proc has scope of method
  return obj
end

def kk(&b1)
  b1.call
end

=begin
def gg(&b1,&b2) #give error as two block cannot be passed
  b1.call
  b2.call
end
=end
def ggarray(*&arr)
  arr.each {|ele| ele.call}
end

var = Proc.new {|x| puts x}

#kk{puts 'b1'}
#gg{puts 'new b1'} {puts 'new b2'}
#var = procmethod
#var.call
#puts a

