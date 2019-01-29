require 'base_class_instance_count'

describe Parent do
    describe '#number_of_instances' do
        subject {Parent.number_of_instances}

        context 'when instance of child class and itself is created' do
            before do
                p=Parent.new
                c1=Child.new
                c2=Child.new
            end
            it 'should return total number of instance count' do
                expect(subject).to eq(3)
            end
        end
    end
end