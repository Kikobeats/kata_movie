require 'imdb'

## Mapping API
# https://github.com/ariejan/imdb
class IMDB

  DEBUG = false

  def self.debug(str)
    puts "DEBUG ========= " << str << " =========" if DEBUG
  end

  def top
    debug "Query TOP250"
    arr = Imdb::Top250.new.movies
    arr
  end

  def search(query)
    debug "Query Search"
    search = Imdb::Search.new query
    search.movies
  end

end
