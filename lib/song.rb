class Song 
  @@song_count = 0
  @@artist_count = 0
  @@genre_count = 0
  
  def initialize(song_name,song_artist,song_genre)
    @song = song_name
    @artist = song_artist
    @genre = song_genre
  end
  
  def self.artists
    @@artist_count
  end
  
  def self.genre_count
  end
end