#1
def first(x)
x**3
end
p first(3)
p first(2)
#2
def second(y)
    if y >= 0
        return "good"
    else
        return "bad"
    end
end
p second(2)
p second(-1)
#3
def the_same1
    return "ruby"
end
p the_same1

def the_same2
    "ruby"
end
p the_same2

#4 
def power(to_horsepower, to_kwt)
    return [to_horsepower * 0.7355, to_kwt * 1.3596]
end
p power(10, 10)
#5
def something
    "How are you?"
end
p something
undef something
#p something
#Traceback (most recent call last):
#4_methods.rb:38:in `<main>': undefined local variable or method `something' for main:Object (NameError)

#6
def log?(x)
    x > 5
end
puts log?(2)
puts log?(7)
#7
def sort!(array)
end
#8
def example(a, b)
    a * b
end
alias original_example example
#9
def count(*x)
    x
end
puts count(1, 90, 123, -7)
#10
def count_1(a = 3, *b)
    return a, b
end

#11 
def slice_hash(hash, keys_array)
    hash.select {|k, v| keys_array.include?(k) }
end
p slice_hash({a: 1, b: 2, c: 3, d: 4, e: 5}, [:a, :c])
#12
def minimum(arr)
    min = arr[0]
    arr.each do |i|
        if i < min
            min = i
        end
    end
    return min
end
p minimum([5232, 323, -23234, 2325, 336])
#13
def default(options = {})
    a = options[:a] || 0
    b = options[:b] || 1
    puts a
    puts b
end
def default(a: 0, b: 1)
    puts a
    puts b
end
default ({a: 2})
#14
def cycle(q, x, y)
    i = 0
    while (i <= q)
        yield i * (x**3) - y 
        i += 1 
    end
end
cycle(2, 5, 100) {|w| puts w}
#15
def cycle(q, x, y, &b)
    i = 0
    while (i <= q)
    b.call i * (x**3) - y 
        i += 1 
    end
end
cycle(3, 5, 10) {|w| puts w}
#16
def cycle(q, x, y, p)
    i = 0
    while (i <= q)
    p.call i * (x**3) - y 
        i += 1 
    end
end
p = Proc.new {|w| puts w}
cycle(3, 5, 10, p)
#17
array = [35, 1, 47, 58, 69, 987]
p array.inject(1) {|i, k| i * k}
#18
arr = ["dog", "pig", "sheep", "woolf"]
p arr.map(&:upcase)
#19:
#a)
def some_block  
    yield("hello", 10)  
end  
  some_block {|s, n| puts s + ' ' + n.to_s}
#b)
def try  
    if block_given?  
      yield  
    else  
      puts "no block"  
    end  
end
    try
    try { puts "hello" }
#c)
def some_2block(&b)
    b.call("hello", 10)  
end  
    some_2block {|s, n| puts s + ' ' + n.to_s}
#20
x, y = 2, 3
l = -> (x, y) {x + y}
p l.call(x, y)

#Додатково: 
#1
def factorial(x)
    if x == 0
       return 1
    else
        x * factorial(x-1)
    end
end
 
puts factorial(4)
puts factorial(5)
puts factorial(6)
#2
#The return statement in a block does not just return from the block to the invoking iterator,
#it returns from the method that invoked the iterator:
def test 
    puts "entering method" 
    1.times { puts "entering block"; return } # Makes test method return 
    puts "exiting method" # This line is never executed 
end 
  
test
#3
def close(x) 
    lambda {|a| a.collect{|i| i*x } } 
end 
  
  z = close(3) 
   
  puts z.call([4, 2, 3, 5, 10])
#4
def average(arr)
    val = 0.0
    arr.each do |i|
      val += i
    end
    l = arr.length
    val / l
end
 
p average([4, 5, 6])  
p average([0, 3, 8, 2, 5, 2, 7])
#5
def middle(s)
    s[(s.size/2.0-1).round..-(s.size/2.0).round]
end
p middle("roof")

#mine realization:
def scan(string)
    size = string.size
    if size % 2 == 0
        p string[size/2 - 1] + string[size / 2]
    else
        p string[size / 2]
    end
end
p scan("roof")
#6
def scan(word)
    items = ["a", "e", "i", "o", "u"]
    if word.is_a?(String)
        sum = 0
        word.split("").each do |x|
            sum += 1 if items.include?(x)
        end
        p sum
    else
        p "You need put the string!!!"
    end
end
p scan("word")
#7
def between(a, b)
    (a..b).to_a[1..-2 ]
end
puts between('A', 'E')