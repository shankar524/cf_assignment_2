require 'httparty'

class FetchMovie
  include HTTParty

  NOT_AVAILABLE='N/A'
  KEY='d96b2f9c' 
  BASE_URL='http://www.omdbapi.com'
  FILE_NAME='i_love_series.csv'
  COMMA=','
  TYPE='series'

  def initialize
    @movies_data=[]
    @movies_to_fetch=['Fargo','24','The Knick','Breaking bad','Game of Thrones','Milap']
  end

  def fetch_and_store_to_csv
    
    #create file
    file = File.new(FILE_NAME, "w")

    #fetch movies data
    fetch_movies_data

    #write to file each movie data
    @movies_data.each { |person| file.puts(person.values.join(COMMA)) }

    #close file after reading
    file.close
  end
  private

  def make_http_request_to_ombd_for_series(movie_name)
    
    return_hash = Hash.new
    fetch_url = "#{BASE_URL}/?apikey=#{KEY}&type=#{TYPE}&t=#{movie_name}"
    
    response = HTTParty.get(fetch_url)

    return_hash['title'] = movie_name
    return_hash['year'] = get_value_or_set_not_available(response,'Year')
    return_hash['genre'] = get_value_or_set_not_available(response,'Genre') 
    return_hash['poster'] = get_value_or_set_not_available(response,'Poster')
    return_hash['imDB Rating'] = get_value_or_set_not_available(response,'imdbRating')
    return_hash['type'] = get_value_or_set_not_available(response,'Type')

   return_hash
  end

  def get_value_or_set_not_available(hash,key)
    hash[key]||NOT_AVAILABLE
  end

  def fetch_movies_data
    @movies_to_fetch.each {|movie| @movies_data<< make_http_request_to_ombd_for_series(movie) }
  end

end

m1 =FetchMovie.new
puts m1.fetch_and_store_to_csv