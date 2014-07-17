require_relative 'movie_party.rb'

EASY    = 3
MEDIUM  = 5
HARD    = 7

movieParty = MovieParty.new

get '/' do
  @movies = movieParty.query(EASY)
  erb :index
end


