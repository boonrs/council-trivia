class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.references :question, index: true, foreign_key: true, null: false
      t.references :candidate, index: true, foreign_key: true, null: false
    end

    add_index :answers, [:candidate_id, :question_id], unique: true
  end
end
