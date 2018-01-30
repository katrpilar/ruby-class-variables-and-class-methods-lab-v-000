class Song
  attr_accessor :name,:artist,:genre
  @@count = 0 #number of new songs that are created from the Song
  @@artist_count = 0
  @@genre_count = 0
  @@all_artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artist_count += 1
    @@genre_count += 1
    @@all_artists << @artist
    @@genres << @genre
  end
  
  def self.count 
    @@count
  end
  
  def self.genres 
    #remove duplicates from array
  end
  
  def self.artists
    @@artist_count
  end
  
  def self.genre_count
    @gcount = {}
    @@all_genres.map{|item| 
    @gcount[item] = @@all_genres.count(item)
    @all_genres.delete(item)
    }
    @gcount
  end
  
end