class Plane < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy

  validates :plane_type, presence: true
  validates :max_occupancy, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :city, presence: true

  CITY_IMAGES ={
    "Mexico City": "https://images.unsplash.com/photo-1585464231875-d9ef1f5ad396?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "New York": "https://images.unsplash.com/photo-1534430480872-3498386e7856?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "Los Angeles": "https://images.unsplash.com/photo-1460881680858-30d872d5b530?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80",
    "London": "https://images.unsplash.com/photo-1488747279002-c8523379faaa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "Amsterdam": "https://images.unsplash.com/photo-1518622923628-f909e4f7c583?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1300&q=80",
    "San Francisco": "https://images.unsplash.com/photo-1501594907352-04cda38ebc29?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80",
    "Default": "https://images.unsplash.com/photo-1587162146766-e06b1189b907?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1425&q=80"
  }

end
