class Band < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :artists
  has_many :recordings
  has_many :songs, :through => :recordings

  def self.record_songs_many_times
  	self
  		.select('bands.*, songs.name AS song_name, COUNT(*) AS song_count')
  		.joins(:recordings => :song)
  		.group('bands.id, songs.id')
  		.having('COUNT(*) > 1')
  end
end
