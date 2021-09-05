class ArtistsController < ApplicationRecord
  belongs_to :billboard
  has_many :songs
  validates :name, uniqueness: true
end
