class Album < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :year, presence: true

  belongs_to :band
end
