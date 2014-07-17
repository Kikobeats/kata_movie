require_relative '../lib/movie_party'

NUMBER = 3
QUERY  = 'Tarantino'

describe "Query TOP250 ::" do

  before :each do
    @party = MovieParty.new
    @arr   = @party.query(NUMBER)
    @condition = true

    @arr.each do |e|
      condition = false if e.poster.nil?
    end

  end

  it "all movies have poster" do
    expect(@condition).to eql(true)
  end

end


describe "Query Search ::" do

  before :each do
    @party = MovieParty.new
    @arr   = @party.search(NUMBER, QUERY)
    @condition = true

    @arr.each do |e|
      condition = false if e.poster.nil?
    end

  end

  it "all movies have poster" do
    expect(@condition).to eql(true)
  end

end
