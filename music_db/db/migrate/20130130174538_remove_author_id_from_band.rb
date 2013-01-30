class RemoveAuthorIdFromBand < ActiveRecord::Migration
  def up
  	remove_column :bands, :author_id
  end

  def down
  	add_column :bands, :author_id, :integer
  end
end
