# using class variables to keep track of instance variable counts
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    gc = {}
    @@genres.each { |item| gc[item] ? gc[item] += 1 : gc[item] = 1 }
    gc
  end

  def self.artist_count
    ac = {}
    @@artists.each { |item| ac[item] ? ac[item] += 1 : ac[item] = 1 }
    ac
  end
end
