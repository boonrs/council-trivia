class Answer < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :question

  validates :body, presence: true
  validates :candidate, presence: true
  validates :question, presence: true
end
