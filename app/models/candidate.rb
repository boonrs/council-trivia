class Candidate < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  validates :name, presence: true
  validates :photo_url, format: URI.regexp, allow_nil: true
  validates :website, format: URI.regexp, allow_nil: true
end
