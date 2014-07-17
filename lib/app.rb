require_relative 'movie_party.rb'


EASY        = 3
MEDIUM      = 5
HARD        = 7
DEVELOPMENT = true

get '/' do

  unless DEVELOPMENT

    movieParty = MovieParty.new
    @movies   = movieParty.query(EASY)
    @answer   = movieParty.game(@movies)

  else

    require_relative 'fixtures.rb'

    fixture   = Fixtures.new
    @movies   = fixture.array
    @answer   = fixture.element

    puts "fakedata: #{@movies}"
    puts "fakedata: #{@answer}"

  end

  erb :index

end
