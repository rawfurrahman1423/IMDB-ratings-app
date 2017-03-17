require 'omdbapi'
require 'pp'

class Movie
    attr_reader :title, :year, :rating, :rated, :runtime, :genre, :releasedate, :seasons #different holder of information
    
    #all variables listed below that gets information based on what the user types into movie name
    def initialize(title) 
        @title = title
        movie = OMDB.title(title)
        @year = movie.year
        @rating = movie.imdb_rating
        @rated = movie.rated
        @runtime = movie.runtime
        @genre = movie.genre
        @releasedate = movie.released

    end
end

#test_movie = OMDB.title("Logan")
#pp test_movie