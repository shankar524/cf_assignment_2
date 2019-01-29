require 'student_class'

describe Student do
    describe '.better_grade_than?' do
        subject {Student.new("Joe",75).better_grade_than?(bob)}
        let(:bob) {}

        context 'when student with greater marks is passed' do 
            let(:bob) {Student.new("Bob",85)} 

            it 'should return false' do
                expect(subject).to be(false)
            end
        end

        context 'when student with lesser marks is passed' do 
            let(:bob) {Student.new("Bob",50)} 

            it 'should return true' do
                expect(subject).to be(true)
            end
        end
    end
end