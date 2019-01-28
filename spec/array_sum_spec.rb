require 'array_sum'

describe NumberArraySum do 
   subject { NumberArraySum.new } 

   describe ".print_arr_sum" do
      let(:number_arr){[1,2,3]}
   
      it "should return sum(6) when Number array [1,2,3] is passed" do
         expect(subject.print_arr_sum(number_arr)).to be(6)
      end

      it 'should return nil when empty array is passed' do
         expect(subject.print_arr_sum([])).to be(nil)
      end

     it 'should return nil when nil is passed' do
         expect(subject.print_arr_sum(nil)).to be(nil)
     end
     
     it 'should return nil when any of the array item is not number' do
      expect(subject.print_arr_sum([1,2,3,'a'])).to be(nil)
     end
   end
end


