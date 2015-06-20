class Answer < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :question

  validates :body, presence: true, length: { maximum: 500 }
  validates :candidate, presence: true
  validates :question, presence: true
end
