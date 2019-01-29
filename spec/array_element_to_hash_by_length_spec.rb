require 'array_element_to_hash_by_length'

describe ArrayElementToHash do
  describe '.compute' do
    subject {ArrayElementToHash.new.compute(input)}
    let(:input) {['aeroplane','bird','superman','desktop','documentation','board']}
    let(:expected_output){{
      'aeroplane' => 9,
      'bird' => 4,
      'superman' => 8,
      'desktop' => 7,
      'documentation' => 13,
      'board' => 5
        }
      }

      it 'should return hash with key as array item and item length as value' do 
        expect(subject).to eq(expected_output)
      end
  end
end