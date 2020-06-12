require 'rspec'

describe "An example of the equality object id" do 

  it "should show how the equality object id work" do 
       
  id_1 = 2
  id_2 = 3
  id_3 = :rails
  #id_4 = "rails"

  expect(id_1).to be(2) 
  expect(id_2).to be(3) 
  expect(id_3).to be(:rails)
  #expect(id_4).to be("rails")
  end
    
end

describe "An example of the equality Matchers" do 

  it "should show how the equality Matchers work" do 
       
  a = 2
  b = true
  c = :rails
  d = "rails"


  expect(a).to eq(2) 
  expect(b).to eq(true) 
  expect(c).to eq(:rails) 
  expect(d).to eq("rails")
  end
    
end




describe "An example of the Comparison matchers" do 

  it "should show how it works" do 
       
  x = 2
  y = 7

  #expect(x).to be > (y) 
  # expect(x).to be >= (y) 
  expect(x).to be <= (y) 
  expect(x).to be < (y) 
  expect(x).to be_between(1, 7).inclusive 
  #expect(x).to be_between(3, 8).exclusive 
  end
end

RSpec.describe "@email!" do 
  it { is_expected.to match(/@/) } 
  #it { is_expected.not_to match(/!/) } 
end



RSpec.describe "this email" do
  
  #it { is_expected.to start_with "this" } 
  #it { is_expected.not_to start_with "that" } 

  #it { is_expected.not_to start_with "this" } 
  #it { is_expected.to start_with "that" } 
end
  
RSpec.describe "this email" do
  
  it { is_expected.to end_with "email" } 
  #it { is_expected.not_to end_with "l" } 

end



RSpec.describe [0, 5, 2, 7, 4] do 
  it { is_expected.to start_with 0 } 
  it { is_expected.to start_with(0, 5)} 
  it { is_expected.not_to start_with(2) } 
  it { is_expected.not_to start_with(0, 1, 2, 3, 4, 5) } 

  it { is_expected.not_to start_with 0 } 
  it { is_expected.to start_with 3 } 
end





RSpec.describe "An example of the Matchers" do 

  it "should show how it works" do 
       
  value1 = nil
  value2 = 2
  value3 = 3
  value4 = 0
  value5 = 10
  value6 = []

  expect(value1).to be_nil 

  expect(value2).to be_even 

  expect(value3).to be_odd

  expect(value4).to be_zero 

  expect(value5).to be_integer 

  expect(value6).to be_empty 

  end
end

RSpec.describe Hash do 
  subject { { :key => 111 } } 

  it { is_expected.to have_key(:key) } 
  #it { is_expected.to have_key(:card) } # deliberate failure 
end


RSpec.describe "string" do 
  #it { is_expected.to be_kind_of(Float) } 
  it { is_expected.to be_a_kind_of(String) } 
  # it { is_expected.to be_a(Array) }
end

RSpec.describe 127.0 do 
  # the actual class 
  it { is_expected.to be_instance_of(Float) } 
  it { is_expected.to be_an_instance_of(Float) } 
end

RSpec.describe [2, 4, 8] do 
  #it { is_expected.to all( be_odd ) } 
  it { is_expected.to all( be_an(Integer) ) } 
  it { is_expected.to all( be < 10 ) } 
 
  it { is_expected.to all( be_even ) }
  #it { is_expected.to all( be_a(String) ) } 
  #it { is_expected.to all( be > 2 ) } 
end

RSpec.describe "be_truthy matcher" do 
  it { expect(7).to be_truthy } 
end

RSpec.describe "be_falsey matcher" do  
  #it { expect(7).to be_falsey } 
end

RSpec.describe "include matcher" do
  
  it { expect("string").to include("s") }
  it { expect("string").to include("ing") } 
  it { expect("string").not_to include("no") } 

  it { expect([1, 2]).to include(1) } 
  it { expect([1, 2]).to include(1, 2) }
  it { expect([1, 2]).to include(be_odd.and be < 10 ) }
  it { expect([1, 2]).to include(be_odd)} 
  it { expect([1, 2]).not_to include(17)} 

  it { expect(:a => 1, :b => 2).to include(:a) } 
  it { expect(:a => 1, :b => 2).to include(:a, :b) } 
  it { expect(:a => 1, :b => 2).to include(:a => 1) }

end

