require 'unique_element_count'

describe UniqueCount do

  describe '.unique' do

    subject {UniqueCount.new.unique(input)}
    let(:input){["54af642897722e4ccd000002",
      "54af68ab97722e6a57000003",  
      "54c0f02997722e5cc5000003", 
      "54c0f02a97722e5cc5000013", 
      "56cb1f6697722e219a000002", 
      "54af68ab97722e6a57000003", 
      "54af642897722e4ccd000002", 
      "56cb1f6897722e219a000013"]}
      
    let(:expected_output){{
      "54af642897722e4ccd000002" => 2,
      "54af68ab97722e6a57000003" => 2,
      "54c0f02997722e5cc5000003" => 1,
      "54c0f02a97722e5cc5000013" => 1,
      "56cb1f6697722e219a000002" => 1,
      "56cb1f6897722e219a000013" => 1
      }
      }
    it 'returns unique elements count in an array' do
      expect(subject).to eq(expected_output)
    end
  end
end