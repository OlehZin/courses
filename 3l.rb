#1
p 35 + 25
#2
p 2 + 2 * 2
p (2 + 2) * 2
#3
p 64 ** 0.5
#4
x = 150 + 99
y = 150 - 99
z = 25 * 10
z1 = 36 / 9
p x, y, z, z1
#5
p 12 >= 12
p 15 <= 20
p 15 < 9
p 340 > 339
#6
p 150 <=> 170
p 170 <=> 150
p 150 <=> 150
#7
p 1==1
#8
p 1 == 1.0
#9
p 'str' == 'str'
#10
p 1.eql?(1.0)
#11
p 1.equal?(1)
#12
p 'string' == 'string'
p 'stringa' === 'stringa'
#13
p 'string'.equal?('string')
#14
range = 1..100
p range.include?(55)
p range === 55
#15
p Numeric === 5
p String === 'test'
#16
p w = 3 && w = 1
#17
a = nil 
b = false 
c = 5
if a != nil && b != false 
    p 'Check task'
else 
    p c
end
#18
f = 10
if f < 0 && f >= 1
p "Haha"
else p "Hohoho"
end
#19
q = 19
p = 25
puts q > p ? "Ruby" : "Rails"
#20
a = 10
p a == 10 ? 'a equals 10' : 'a does not equal 10'
p a != 10 ? 'a equals 10' : 'a does not equal 10'
#21:

#a)
x = rand(0..360)
if  x >= 0 && x < 90
    p 'I чверть, ' + x.to_s
elsif x >= 270 && x < 360
    p 'II чверть, ' + x.to_s
elsif x >= 180 && x < 270
    p 'III чверть, ' + x.to_s
elsif x >= 90 && x < 180
    p 'IV чверть, ' + x.to_s
end

#b)
p x
case x 
    when 0...90 then  p "I чверть, #{x}"
    when 270...360 then p "II чверть, #{x}" 
    when 180...270  then p "III чверть, #{x}" 
    when 90...180  then p "IV чверть, #{x}"
end


