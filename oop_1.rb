#1
class Oleh
end
#2
o = Oleh.new
#3
p o.class
#4
p o.is_a? Oleh
#5 - #7
class Person
    
    def initialize(name)
      @name = name
    end
    def name
        @name
    end
    def nick_name
        @name
    end

end

p = Person.new("Oleh")
puts p.name
p = Person.new("bios")
puts p.nick_name
#8 - #12
class Person1
    attr_accessor :name
        def initialize(name)
            @name = name
        end 
        def greetings
            puts "Hello this is #{name}!"
        end

end
p1 = Person1.new("Vova")
puts p1.name
p2 = Person1.new("Taras")
puts p2.greetings
#13
class Test
    def self.first
      puts 'test_first'
    end
  end
  
Test.first

class Test
    def Test.second
      puts 'test_second'
    end
end
  
Test.second

class Test
    class << self
      def third
        puts 'test_third'
      end
    end
end

Test.third
#14
class A
    def public_method
        'public method'
    end
        
protected
    def protected_method
        'protected method'
    end
        
private
    def private_method
        'private method'
    end
end   

a = A.new
p a.public_method
#p a.protected_method 
#oop_1.rb:89:in `<main>': protected method `protected_method' called for #<A:0x0000558d27805ca0> (NoMethodError)
#Did you mean?  protected_methods

#p a.private_method
#Traceback (most recent call last):
#oop_1.rb:93:in `<main>': private method `private_method' called for #<A:0x000055af2e145e78> (NoMethodError)
#Did you mean?  private_methods

#15
class Widget 
    def x 
      @x 
    end 
protected :x 
  
    def utility_method 
      nil 
    end 
private :utility_method 
end

w = Widget.new 
w.send :utility_method 
w.instance_eval { utility_method } 
w.instance_eval { @x }
#16
class Greeter
    def say_hello
        "Hello"
    end
end
#17
class RubyGreeter < Greeter

end
g = RubyGreeter.new
p g.say_hello
#18
class RubyGreeter < Greeter
    def say_hello
        "Hello from Ruby"
    end
end
g = RubyGreeter.new
p g.say_hello

#19
class Greeter
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def greet
        "Hello, #{name}!" 
    end
end
q = Greeter.new('Oleh')
p q.greet
#inheritance in action:
q1 = RubyGreeter.new('Oleh')
p q1.greet
#20-
#21!
class RubyGreeter 
    Const = 959
    attr_accessor :age
    def initialize(name, age)
        super(name)
        @age = age
    end
    def greet
        "Hello, #{name}! My age is #{age}." 
    end
end
q2 = RubyGreeter.new("Oleh", "29")
p q2.greet
p RubyGreeter::Const

#Додатково:

#1
class Point
    class << self
        def sum(*points)
        x = y = 0
        points.each {|p| x += p.x; y -= p.y }
        p Point.new(x, y)
        end
    end
end
#2
class Point
    @@n = 0
    def initialize(x,y) 
        @x,@y = x, y
        @@n += 1
    end
    def self.report 
        puts "Number of points created: #@@n"
    end
end






