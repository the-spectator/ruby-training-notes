class Guru
end

class Chela
end

chela = Chela.new
guru = Chela.new

chela.instance_eval{def fly;'bro just fly';end}
p chela.fly

chela.instance_eval{def fly;'bro dont fly';end}

p chela.fly
