class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
    
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
    @@genres.uniq.reduce({}) {|hash,genre| hash[genre] = @@genres.count(genre)
                              hash
    }
  end
  
  def self.artist_count
    @@artists.uniq.reduce({}) {|hash,artist| hash[artist] = @@artists.count(artist)
                                hash
    }
  end
end