class Plane < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy

  validates :plane_type, presence: true
  validates :max_occupancy, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :city, presence: true
  # validates :photos, presence: true
end
