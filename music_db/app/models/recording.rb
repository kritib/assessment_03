class Recording < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :band
  belongs_to :song
end
