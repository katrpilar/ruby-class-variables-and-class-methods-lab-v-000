class Song 
  attr_reader :song, :artist, :genre
  @@song_count = 0
  @@artist_count = 0
  @@genre_count = 0
  @@all_artists = []
  @@num_of_song_instances
  @@all_genres = []
  
  def initialize(song_name,song_artist,song_genre)
    @song = song_name
    @artist = song_artist
    @genre = song_genre
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
    gcount = {}
    @@all_genres.map{|item| 
    gcount[item] = @@all_genres.count(item)
    @all_genres.delete(item)
    }
    gcount
  end
end