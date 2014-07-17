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

    class Item
      attr_accessor :title, :year, :poster
    end

    obj1 = Item.new
    obj1.title  = 'Stars Wars Episodio I'
    obj1.year   = '2001'
    obj1.poster = 'http://lorempixel.com/500/768/'

    obj2 = Item.new
    obj2.title  = 'Stars Wars Episodio III'
    obj2.year   = '2002'
    obj2.poster = 'http://lorempixel.com/500/768/'

    obj3 = Item.new
    obj3.title  = 'Stars Wars Episodio III'
    obj3.year   = '2003'
    obj3.poster = 'http://lorempixel.com/500/768/'

    @movies = [ obj1, obj2, obj3 ]
    @answer = obj1


  end

  erb :index

end
