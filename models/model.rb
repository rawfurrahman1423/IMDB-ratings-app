require 'omdbapi'
require 'pp'

test_movie = OMDB.title("Game of Thrones")
pp test_movie.year