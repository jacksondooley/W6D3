class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id}

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :viewers,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Artworkshares

  has_many :shared_viewers,
    through: :viewers,
    source: :viewers
end