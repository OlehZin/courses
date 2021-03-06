require '/home/oleh/Стільниця/courses/car.rb'
RSpec.describe 'Car' do
    describe '#inter'
    context 'initialized with default values' do
        it 'equals specified pattern' do
            car = Car.new
        expect(car.inter).to eq("VW Golf 7")
        end
    end
    context 'initialized with custom values' do
        it 'equals specified pattern' do
            car = Car.new(brand: "AUDI", model: "A6")
        expect(car.inter).to eq("AUDI A6")
        end
    end
end