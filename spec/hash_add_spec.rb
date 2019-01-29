require 'hash_add'

describe HashAdd do
  subject {HashAdd.new}

  describe '.add' do
    let(:input) {{'a'=>13223, 'b'=>23232}  }
    let(:invalid_input) {{'a'=>13223, 'b'=>'shankar'}  }

    it 'should return sum of passed hashed value' do
      expect(subject.add(input)).to be(13223+23232)
    end

    it 'should return nil when nil is passed' do
      expect(subject.add(nil)).to be(nil)
    end

    it 'should return nil when non-numeric valued hash is passed' do
      expect(subject.add(invalid_input)).to be(nil)
    end
  end
end