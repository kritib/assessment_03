class Artist < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :band
  has_many :recordings, :through => :band

  has_many :authored_songs, :class_name => 'Song', :foreign_key => 'author_id'

  def self.all_songs_authored
  	artists = self.includes(:authored_songs)
  	with_songs_authored = {}
  	artists.each {|artist| with_songs_authored[artist] = artist.authored_songs}
  	with_songs_authored
  end

end
