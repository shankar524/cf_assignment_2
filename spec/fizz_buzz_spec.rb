require 'fizz_buzz'

describe FizzBuzzProblem do
  describe '.is_divisible_by' do
    subject{FizzBuzzProblem.new.is_divisible_by(divident,divisor)}
    let(:divisor) {}
      let(:divident) {}

    context 'when divisor exactly divides divident' do
      let(:divisor) {5}
      let(:divident) {45}
      it 'should return true' do
        expect(subject).to eq(true)
      end
    end

    context 'when divisor does not exactly divides divident' do
      let(:divisor) {5}
      let(:divident) {47}
      it 'should return false' do
        expect(subject).to eq(false)
      end
    end
  end

  describe '.is_divisible_by_5' do
    subject{FizzBuzzProblem.new.is_divisible_by_5(input)}
    let(:input){5}

    it 'should return true when multiple of 5 is passed' do
      expect(subject).to be(true)
    end
  end

  describe '.is_divisible_by_3' do
    subject{FizzBuzzProblem.new.is_divisible_by_3(input)}
    let(:input){6}
    
    context 'when multiple of 3 is provided' do
      it 'should return true' do
        expect(subject).to be(true)
      end
    end

    context 'when multiple of 3 is not provided' do
      let(:input){5}

      it 'should return false' do
        expect(subject).to be(false)
      end
    end
    
    it 'should return true when multiple of 3 is passed' do
      expect(subject).to be(true)
    end
  end


  describe '.is_divisible_by_5' do
    subject{FizzBuzzProblem.new.is_divisible_by_5(input)}
    let(:input){}

    context 'when multiple of 5 is provided' do
      let(:input) {45}
      it 'should return true' do
        expect(subject).to eq(true)
      end
    end

    context 'when multiple of 5 is not provided' do
      let(:input) {47}
      it 'should return false' do
        expect(subject).to eq(false)
      end
    end
  end

  describe '.fizz_buzz' do
    subject {FizzBuzzProblem.new.fizz_buzz(input)}
    let(:input){5}
    let(:input_five_answer){'1, 2, Fizz, 4, Buzz'}

    it 'should return =>1, 2, Fizz, 4, Buzz when input 5 is input' do
      expect(subject).to eq(input_five_answer)
    end
  end
end