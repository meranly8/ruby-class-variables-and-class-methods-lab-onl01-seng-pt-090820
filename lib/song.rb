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
    @@genres << genre
    @@artists << artist
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
    genres_nums = {}
    @@genres.each do |genre| 
      if genres_nums.has_key?(genre)
        genres_nums[genre] += 1
      else
      genres_nums[genre] = 1
      end
    end
    genres_nums
  end
  
  def self.artist_count
    artist_counts = {}
    @@artists.each do |artist| 
      if artist_counts.has_key?(artist) 
        artist_counts[artist]+= 1
      else
        artist_counts[artist] = 1
      end
    end
    artist_counts
  end
  
end