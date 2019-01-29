require 'array_highest2_sum'


describe ArrayHighest2Sum do
  describe '.calculate' do
    subject {ArrayHighest2Sum.new.calculate(input)}
    let(:input){[1,5,2,7,3,9] }
    let(:highest_2_sum){16}

    it 'should return sum of the two largest number on a given array' do
      expect(subject).to eq(highest_2_sum)
    end
  end
end