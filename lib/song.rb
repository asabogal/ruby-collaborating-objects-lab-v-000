require 'pry'
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    song_attributes = filename.split(' - ')
    song = self.new(song_attributes)
    song.artist_name=(song_attributes[1])
    # song.artist = Artist.find_or_create_by_name(name_artist)

      # binding.pry

  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

  end
end
