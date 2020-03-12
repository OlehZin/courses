#1
array = [5, "qwert", 7, 11, "linux"]
p array
#2
range = 1..3
p range.to_a
#3
array = [[4, 6, "e"], ["q", "w", "p"], ["z", 125, 1001]]
p array
#4
x = 12
y = 20
array = [(x+y), (x*y), (x-y), (x**2 +y)]
p array
#5:
x = "lala"
#a)
array = %w[qwe sds 23 #{x}]
p array
#b)
array = %W[qwe sds 23 #{x}]
p array
#6
array = %w[777 asd 3 qwe 7 8 11 loo 14 zzz]
p array[0]
p array [9]
p array [-1, 1]
#7
array = %w[777 asd 3 qwe 7 8 11 loo 14 zzz]
array[0] = [%w[qwerty 99999999999]]
p array
#8
array = %w[777 asd 3 qwe 7 8 11 loo 14 zzz]
array[15] = "1111111111111"
p array
#9
array = %w[a b c d e]
p array[0, 2]
p array[0..1]
p array[3, 2]
p array[3...5]
#10
array = [1, 2]
array = array + [3, 4, 5]
p array

array = [1, 2]
array = [1, 2] + [3, 4, 5]
p array
#11
array = [1, 2, 3, 4, 5]
array[3] = 6
p array
#12
array_1 = [10, "lala", 20, "pom"]
array_2 = [10, "yoy", "lala", 123]
array = array_1 + array_2
p array
#13
#mistake = array_1 + 12
#p mistake
#Traceback (most recent call last):
#	1: from 2l.rb:60:in `<main>'
#2l.rb:60:in `+': no implicit conversion of Integer into Array (TypeError)

#14
array = array_1 - array_2
p array
#15
array = []
array << "you" <<2
p array
#16
array = [2] * 10
p array
#17
a = [1, 1, 2, 2, 3, 3, 4] 
b = [5, 5, 4, 4, 3, 3, 2]
#18
p a | b
#19
p b | a
#20
p a & b
p b & a
#21
array = ["hello", "ruby","rails", "courses" ]
p array.any? {|word| word.length > 4}
#22
array = ["hello", "ruby","rails", "courses" ]
p array.map {|word|word + "?"}
p array.collect {|word|word + "?"} #both variants are possible)
#23
array = ["string", 345, 100, "string_1"]
array.delete_at(2)
p array
#24
array = ["string", 345, 100, "string_1", 120, 200, "opps"]
array.each {|x| print x, ", "} 
#25
p [].empty?
#26
p array.first
#27
array = [[1, "str", 2], [3, "rts", 4]]
p array.flatten
#28
array = ['dog', 'cat', 'monkey', 'chicken']
p array.include?'cat'
#29
array = [2, 120, 111, 10, 11, 200]
p array.select {|z| z.even?}
#30
array = ["string", 345, 100, "string", 120, 200, "opps", 200]
p array.uniq
#31
hash = Hash.new
p hash
#32
hash["one"] = 1
hash["two"] = 2
hash["three"] = 3
p hash
#33
hash = {'one' => 1, 'two' => 2, 'three' => 3} 
p hash
hash = { one: 1, two: 2, three: 3 }
p hash
#34
range_1 = 1..10
range.each {|x| p x}
#35
range_2 = 1...10
range.each {|x| p x}
#36
p range_1.include?(5)
p range_2.include?(5)
p range_2.include?(10)
#37
range = "c"..."l"
#38
range.each {|x| p x}
#39
puts "" # for visual
range.step(2) {|x| p x}
#40
p range_2.to_a
#41
symbol = :s
p symbol
#42
str = "asdfghjkl"
p str.to_sym
#43
o = nil
p o.nil?
#44
p false != nil
p false != 0
p false != ''
p false != {}
p false != []
#45
a_1 = 0.0 if false
p a_1
#p b_1
#Traceback (most recent call last):
#2l.rb:166:in `<main>': undefined local variable or method `b_1' for main:Object (NameError)

#46
Const = 1
p Const
#47
x = 1
x += 5
p x
#48
x, y, z = 3, 6, 9
p x, y, z
#49
x = y = 5
p x, y
#50
x = 10
p x += 2
p x -= 4
p x *= 3
p x /= 5
# Dodatkovo:
#1
array = Array.new
p array
#2
array = Array.new(3)
p array
#3
array = Array.new(4, 1)
p array
#4
copy = Array.new(array_1) #array_1 - ogolosheno v 12 zavdanni
p copy
#5
count = Array.new(7) {|x| x+1}
p count