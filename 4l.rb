#1
x = 10
#2
while x >= 0 
    p x
    x = x - 1
end
#3
x = 10
while x >= 0 
    p x
    x = x - 2
end
#4
x = 10
while x > 0 
    p x
    x = x - 5
end
#5
x = 0
until x <= 20 do
    puts x
    x = x + 1
end
#6
array = [1, 2, 5, 2345]
puts array.pop until array.empty?
#7
x = 10
begin 
    puts x
    x = x - 1
end until x == 0
#8
array = ['q', 'as', 'pou', 3, 7, 8, 9]
for data in array 
    p data
end
#9
hash = {Oleh: 1, Olha: 3, Petro: 7, Ihor: 9}
for key, value in hash
    puts "The key is #{key}, the value is #{value}"
end
#10
hash = {Oleh: 1, Olha: 3, Petro: 7, Ihor: 9}
hash.each do |key, value|
    puts sprintf("#{key}, #{value}")
end
#11
51.times do |i|
    next if i == 0 || i == 21 || i == 35
    puts i
  end
#12
array = [1, 2, 3, 4]
p array.map {|i| i ** 3}
#13
array = [12, 34, 343, 777, 567, 787, 100]
p array.min
p array.max
#14
2.upto(7) {|i| p i}
#15
6.downto(-3) {|i| p i}
#16
6.downto(-3) {|i| p i}
#17
1.upto(15) {|i| p i}
1.upto(15) do |i| p i end
#18
r = 1..50
p r.reduce(:+)
#19
image = nil
begin
  File.read(image.filename)
rescue
  puts "File can't be read!"
end

#Додаткові завдання:

#1
x = 7
while x <= 98 do
    puts x
    x += 7
end
#2
y = 1
n = 2
while y <= 512 && n <= 9 do
    puts y
    y = y * (2**(n-1))
end
#3
x = 1  
y = 1
while x <= 10 && y <= 10 do
    z = x * y
    puts "#{x} * #{y} = #{z}"
    x += 1
    
        for r in (2..10)
           s = r * z
            puts "#{z} * #{r} = #{s}"
        end
end
#4
f1 = 0
f2 = 1
array = []

    while f1 <= 10
        array << f1
    f1, f2 = f2, f1 + f2
  end
  
  puts array
#5
array = [555, 212, 34, 87, 111, 542, 1000, 335]
max = 0
array.each do |i|
    if i > max
        max = i
      end
end
puts max


min = max
    array.each do |i|
        if i < min
            min = i
          end
    end
    puts min
#6
def course
    yield 
end
p course {'Ruby'}
#7
def new_b(x, y)
    yield if block_given? 
    yield if block_given?
    yield if block_given?
    yield if block_given?
    yield if block_given?
end
p new_b(5, 7) {5 * 7}
p new_b(3,10)
p new_b(3, 10) {3 * 10} 
#8
def factorial(n)
    if n < 0
      return nil 
    end
    result = 1
    while n > 0
      result = result * n 
      n -= 1 
    end
    return result 
   end

p factorial(7)
p factorial(5)
p factorial(3)
#9
scored = 90.0
max_possible = nil
begin
grade = scored / max_possible
rescue TypeError
p "The value for max_possible is absent"
grade = 0.0
else
p "Your grade is #{grade}%"
ensure
p "Grading complete!"
end
