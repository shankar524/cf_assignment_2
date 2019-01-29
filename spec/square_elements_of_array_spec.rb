require 'square_elements_of_array'

describe SquareArrayElements do

  describe '.square' do 
    subject {SquareArrayElements.new.square(input)}
    let(:input) {[1, 2, 3, 4, 5, 6]}
    let(:correct_output) {[1, 4, 9, 16, 25, 36]}

    it 'should square each elements of input array' do
      expect(subject).to match_array(correct_output)
    end
  end
end