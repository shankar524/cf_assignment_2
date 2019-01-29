class JukeBox 
    def initialize(songs_list)
        @songs=songs_list
        @current_song=0
    end

    def play
        @songs[ @current_song]
    end

    def next
        @current_song=(@current_song+1)% @songs.length
        play
    end

    def previous
        @current_song<=0 ? @current_song=@songs.length-1 : @current_song-=1
        play
    end

    def shuffle
        @songs.shuffle!
        #optional to set  current song to first song
        @current_song=0
        play 
    end

    def add_song(new_song)
        @songs << new_song
    end
end