class Stu
end

ram = Stu.new
gam = Stu.new

print 'ram ',ram.singleton_class.ancestors,"\n"
print 'gam ',gam.singleton_class.ancestors,"\n"

def ram.shout
  'NO'
end

print 'ram ',ram.singleton_class.ancestors,"\n"
print 'gam ',gam.singleton_class.ancestors,"\n"
