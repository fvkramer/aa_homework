class Toy < ApplicationRecord
  belongs_to :toyable, polymorphic: true
  validates :name, uniqueness: true
end
