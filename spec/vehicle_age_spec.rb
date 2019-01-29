require 'vehicle_age'

describe Vehicle do
    describe '.age' do 
        subject {Vehicle.new(manufactured_year).age}
        let(:year_now) {Time.now.year}
        let(:manufactured_year) {1996}
        
        it 'should return age of the vehicle' do
            expect(subject).to eq(year_now - manufactured_year)
        end
    end
end