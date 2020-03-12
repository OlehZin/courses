require 'date'
a = Date.parse "01.03.2020"
b = Date.parse "31.03.2020"
#friday = [5]
#count_fridays = (a..b).to_a.select {|k| friday.include?(k.wday)}
count_fridays = (a..b).to_a.select {|k| k.wday == 5}
p count_fridays.count
