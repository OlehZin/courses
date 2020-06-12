require 'rspec'
#1
def even?(x)
  (x % 2) == 0 
end

x = 8
  # p even?(x)

describe "even?" do 
  it "should show how it works" do 
    expect(even?(x)).to be_truthy
  end
end

#2
class Counter 
  class << self 
    def increment 
      @y ||= 0 
      @y += 2 
    end 
    def back 
      @y ||= 0
    end 
  end 
end 

# p Counter.increment
# p Counter.back


RSpec.describe Counter, "#increment" do
  it "should increment the y" do 
    expect { Counter.increment }.to change { Counter.back }.from(0).to(2) 
  end 
  it "should return y" do 
    expect { Counter.increment }.to change { Counter.back }.by(2)
  end 
end

#3
class Error_1
  def self.inverse(z)  
    raise ArgumentError, 'Argument is not numeric' unless z.is_a? Numeric  
    1.0 / z 
  end  
end
# puts Error_1.inverse(2)
# puts Error_1.inverse('not a number')

RSpec.describe Error_1, "#inverse" do
  it "should check z" do
    expect { Error_1.inverse("string") }.to raise_error("Argument is not numeric")
  end
end

#4
RSpec.describe a = [0, 5, 2, 7, :a] do 
  it { expect(a).to all( be_an(Integer) ) }
end