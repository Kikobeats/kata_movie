require_relative 'imdb_adapter'

class MovieParty
  attr_accessor :answer
  DEBUG = false

  def initialize
    proxy = IMDB.new
  end

  def game(arr)
    # Pick the movie
    answer = arr.sample
  end

  def order_by_year(arr)

  end

  def select_random(arr)


  end

  def query(number)

    result = []
    query  = proxy.top

    while result.size != number

      movie = query.sample

      if !movie.poster.nil?
        result.push movie
        query.delete movie
      end

    end

    result

  end

  def search(number, query)

    result = []
    query  = proxy.search(query)

    while result.size != number

      movie = query.sample

      if !movie.poster.nil?
        result.push movie
        query.delete movie
      end

    end

    result

  end

end
