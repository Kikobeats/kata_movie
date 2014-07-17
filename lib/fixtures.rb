class Item
  attr_accessor :title, :year, :poster
end

class Fixtures

  attr_accessor :array, :element

  def initialize

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

    @array   = [ obj1, obj2, obj3 ]
    @element = obj1

  end
end
