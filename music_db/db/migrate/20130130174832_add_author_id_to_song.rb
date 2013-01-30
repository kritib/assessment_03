class AddAuthorIdToSong < ActiveRecord::Migration
  def change
  	add_column :songs, :author_id, :integer
  end
end
