require 'omdbapi'
require 'pp'

class Movie
    attr_reader :title, :year, :rating, :rated, :runtime, :genre, :releasedate, :seasons
    
    def initialize(title, year, rating, rated, runtime, genre, releasedate, seasons)
        @title = title
        @year = year
        @rating = rating
        @rated = rated
        @runtime = runtime
        @genre = genre
        @releasedate = releasedate
        @season = season
    end
end

test_movie = OMDB.title("Game of Thrones")
pp test_movie