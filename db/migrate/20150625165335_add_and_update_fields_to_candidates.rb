class AddAndUpdateFieldsToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :twitter, :string
    add_column :candidates, :photo_url, :string
    remove_column :candidates, :party, :string
    remove_column :candidates, :description, :text
  end
end
