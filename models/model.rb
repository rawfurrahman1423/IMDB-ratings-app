#These gems have to be activated so that the program can run
require 'omdbapi' 
require 'pp'

class Movie
    attr_reader :title, :year, :rating, :rated, :runtime, :genre, :releasedate, :seasons #different temporary holders of information
    
    #all variables listed below that gets information based on what the user types into movie name
    def initialize(title) 
        @title = title
        #test_movie = OMDB.title("Logan")
        #pp test_movie
        #above is the format that the title is taken from the user and information placed into variables
        movie = OMDB.title(title)
        @year = movie.year
        @rating = movie.imdb_rating
        @rated = movie.rated
        @runtime = movie.runtime
        @genre = movie.genre
        @releasedate = movie.released

    end
end


