require 'array_sum'

describe NumberArraySum do 

   describe '.print_arr_sum' do
      subject { NumberArraySum.new.print_arr_sum(input_array) }
      let(:input_array){[1,2,3]}
      

      context 'when number array i.e [1,2,3] is passed' do
         let(:result){6}
         it 'should return sum(6)' do
            expect(subject).to be(result)
         end
      end

      context 'when empty array is passed' do
         let(:input_array){[]}
         it 'should return nil' do
            expect(subject).to be(nil)
         end
      end
     
      context 'when nil is passed' do
         let(:input_array){nil}
         it 'should return nil' do
            expect(subject).to be(nil)
        end
      end

      context 'when number array consist of non numeric value' do
      let(:input_array){[1, 2, 3, 'a']}
         it 'should return nil' do
            expect(subject).to be(nil)
         end
      end
   end
end


