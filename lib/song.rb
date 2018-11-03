require "pry"

class Song
  attr_reader :name, :artist, :genre
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    new_hash = {}
    @@artists.uniq.each do |artist|
      new_hash[artist] = @@artists.count(artist)

    end
    new_hash
  end

  def self.genre_count
    new_hash = {}
    @@genres.uniq.each do |genre|
      new_hash[genre] = @@genres.count(genre)
    end
    new_hash
  end

end
