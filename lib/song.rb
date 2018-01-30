class Song
  attr_accessor :name,:artist,:genre
  @@count = 0
  @@artist_count = 0
  @@genre_count = 0
  @@all_artists = []
  @@all_genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@num_of_song_instances += 1
    @@artist_count += 1
    @@genre_count += 1
    @@all_artists << @artist
    @@all_genres << @genre
  end
  
  def self.count 
    @@num_of_song_instances
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
  
  def self.genres 
    @@genre_count
  end
end