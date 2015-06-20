class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.string :party
      t.text :description
      t.string :website
    end
  end
end
