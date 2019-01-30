require 'juke_box'

describe JukeBox do 
    let(:songs) {['song1.mp3','song2.mp3','song3.mp3']}

    describe '.play' do
        subject {JukeBox.new(songs).play}
        it 'should return current song' do
            expect(subject).to eq('song1.mp3')
        end 
    end

    describe '.next' do
        subject {JukeBox.new(songs).next}
        it 'should return next song' do
            expect(subject).to eq('song2.mp3')
        end 
    end

    describe '.previous' do 
       
        subject {JukeBox.new(songs).previous}
        it 'should return previous song' do
            expect(subject).to eq('song3.mp3')
        end 
    end

    describe '.add_song' do
        subject {JukeBox.new(songs).add_song(new_song)}
        let(:new_song) {'song4.mp3'}

        it 'should return new songs list' do
            expect(subject).to match_array(songs.push(new_song))
        end 
    end

    describe '.shuffle' do
        subject {JukeBox.new(songs).shuffle}
        let(:previous_first_song){'song1.mp3'}
        it 'should not return previous songs order list' do
            expect(subject).not_to eq(previous_first_song)
        end 
    end

    
end