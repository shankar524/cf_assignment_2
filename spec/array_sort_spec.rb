require 'array_sort'

describe ArraySort do 
  
  describe '.sort' do

    subject {ArraySort.new.sort(input)}
    let(:input) {[21,3,43,5454,23,1233]}
    let(:sorted_array) {[3, 21, 23, 43, 1233, 5454]}

    it 'should return sorted number array when unsorted number array is provided' do
      expect(subject).to match_array(sorted_array)
    end
  end
end