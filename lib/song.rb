class Song
  attr_accessor :name, :artist, :genre
  @@count = 0 #number of new songs that are created from the Song
  @@artist_count = 0
  @@genre_count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artist_count += 1
    @@genre_count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count 
    @@count
  end
  
  def self.genres 
    @@genres
    #remove duplicates from array
  end
  
  def self.artists
    @@artists
    #remove duplicates from array
  end
  
  def self.genre_count
   # @gcount = {}
  #  @@genres.map{|item| 
   # @gcount[item] = @@genres.count(item)
   # @@genres.delete(item)
    #}
    #@gcount
  end
  
  def self.artist_count
   # @acount = {}
   # @@artists.map{|item| 
   # @acount[item] = @@artists.count(item)
   # @artists.delete(item)
   # }
    #@acount
  end
  
end