#ruby
#rails
"string"
'also string'

150
150.11
x = 'like ruby'
p x
y = 230
p y
z = 235.55
p z

#if = 10
#p if
#index.rb:14: syntax error, unexpected end-of-input

#break = "qwert"
#p break
#  index.rb:16: void value expression
#break = "qwert"
#index.rb:16: syntax error, unexpected '=', expecting end-of-input
#break = "qwert"

a = 7
b = 8
total = a + 
b
p total

a_1 = 9.2345
b_1 = 9
total_1 = a_1
+ b_1
p total_1

a_1 = 16
a_2 = 15
total_2 = a_1 \
+a_2
p total_2

v = 7/3
p v

v_1 = 7.0/3
p v_1

w = 7.0/0
p w

=begin
w_1 = (2/3) / 0
#p w_1
#Traceback (most recent call last):
1: from index.rb:53:in `<main>'
index.rb:53:in `/': divided by 0 (ZeroDivisionError)
=end

ostacha = 9 % 2
p ostacha

stepin = 2**4
p stepin

literal = 'literal'
p literal

literal = '\'literal!\' '
puts literal


require 'mathn'
interpolation = "90 degrees=#{1/2*Math::PI} radians"
p interpolation

literal_long = "dfedmfekwfjffwefwefwdfewfewfwefwfwfwefefewfwflfflsfslslf"\
" mfdwkfmdfksdfdskfmdskmfkdms"
p literal_long


literal_q = %q{one\ntwo\n#{ 1 + 2 }}
p literal_q

literal_Q = %Q{one\ntwo\n#{ 1 + 2 }}
p literal_Q

literal = %{one\ntwo\n#{ 1 + 2 }}
p literal

a = 3
b = 6**2
literal_Q = %Q{#{a+b}}
p literal_Q

string_1 = 'Hello! '
string_2 = 'How are you?'
string = string_1 + string_2 +' ' + 100.to_s
p string

name = 'Oleh'
name_1 = 'Oleh'
puts name == name_1 

str = 'course ' * 6 
puts str.lines
puts str.each_line {|line| print line}


str = 'I love my family!'
str << ' So much!'
p str

str = 'I love Ruby!!!'
puts str[0]
puts str[7]
puts str [str.length-7 ]
puts str [str.length-14 ]

str = 'Ruby'
p str[0, -1]

str = 'Hello Ruby'
puts str[6,9]
puts str[6..9]

str = 'Ruby is awesome'   #method delete_at doesn't work, only for arrays
puts str.gsub("is", "")

str = 'RUBY'
puts str.downcase

str = 'Ruby courses'
puts str.length
puts str.length-1

str = 'Ruby'
puts str.reverse
puts str.reverse!

def one_p(one)
    @one = one
end
puts one_p(1)


e = 0.1
e1 = 0.4 - 0.3
puts e == e1
puts e1

name = 'Oleh'

greetings = 'Hello! What is your name?' + ' Hi, my name is ' + "#{name}" + '!'
puts greetings

time    = 5.4546
message = "Workind day has finished in %d minutes" % [time]
puts message

hi = 123
s = %s(#{hi} bro)
puts s

score = 115.323432543
puts "The average is %0.2f" % [score]


puts sprintf("%.1f", 321)

puts sprintf("%d", 345.2123)

puts sprintf("%20.8s", "string test")


euro = "\u20ac"
puts euro

y = "\u{A5}"
puts y

dolar = "\u0024"
puts dolar

str = 'Good day today'
puts str.index('d')
puts str.delete 'day'
puts str.succ 
puts str.split
puts str.rjust(20)
