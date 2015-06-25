class Candidate < ActiveRecord::Base
  validates :name, presence: true
  validates :photo_url, format: URI.regexp, allow_nil: true
  validates :website, format: URI.regexp, allow_nil: true
end
