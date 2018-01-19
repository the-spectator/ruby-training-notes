class Test
  def self.myint(x)
    return x.to_i
  end
  def self.to_proc
    ->(x){myint(x)}
  end
end

#puts ['1','2','3','4'].map(&Test)

check_proc = proc{|x| return x}
check_lm = lambda{|x| return x}
my_p = proc{|x| x+3}
my_l = ->(x){x+3}

def return_check(p)
  puts 'method start'
  p.call(1)
  puts 'method end'
end

var = 2

def scope_check_lamda
  var = 3
  lam = ->(var) { puts var=9 }
  #lam = proc {|var| puts var=9}
  puts var
  return lam
end

def profiling(msg,arg1, arg2)
  t = Time.now
  arg1.call(arg2)
  exe_time = Time.now - t
  puts "time #{msg} req #{exe_time}"
end

def nested_proc
  parent = proc do|child, var|
    value = child.call(var)
    value*value
  end
  p_child = proc {|value| value+2}
  puts parent.call(p_child,3)
end

#profiling('lambda', my_l,10000000000)
#profiling('lambda', my_l,100)
#profiling('lambda', my_l,100)
#profiling('proc', my_p,10000000000)
#profiling('proc', my_p,100)
#profiling('proc', my_p,100)

#return_check(check_proc)

#obj = scope_check_lamda
#obj.call(0)

nested_proc
