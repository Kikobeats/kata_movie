require 'imdb'
require 'pry'

class MovieParty

  DEBUG         = true
  attr_accessor :var

  def query(number)

    result = []
    query  = imdb_top

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
    query  = imdb_search(query)

    while result.size != number

      movie = query.sample

      if !movie.poster.nil?
        result.push movie
        query.delete movie
      end

    end

    result

  end

  ## Mapping API
  # https://github.com/ariejan/imdb

  def imdb_top
    puts '=' * 89 if DEBUG
    arr = Imdb::Top250.new.movies
    puts '=' * 89 if DEBUG
    arr
  end

  def imdb_search(query)
    puts '=' * 89 if DEBUG
    search = Imdb::Search.new query
    puts '=' * 89 if DEBUG
    search.movies
  end

end
