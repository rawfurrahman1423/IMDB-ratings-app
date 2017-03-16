require 'omdbapi'
require 'pp'

class Movie
    attr_reader :title, :year, :rating, :rated, :runtime, :genre, :releasedate, :seasons
    
    def initialize(title)
        @title = title
        movie = OMDB.title(title)
        @year = movie.year
        @rating = movie.imdb_rating
        @rated = movie.rated
        @runtime = movie.runtime
        @genre = movie.genre
        @releasedate = movie.released
        @season = movie.total_seasons
    end
end

# test_movie = OMDB.title("Game of Thrones")
# pp test_movie