class Song
  @@song_count = 0
  @@artist_count = 0
  @@genre_count = 0
  @@all_artists = []
  @@num_of_song_instances = 0
  @@all_genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all_artists << @artist
    @@num_of_song_instances += 1
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
end