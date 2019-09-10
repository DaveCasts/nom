class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :pictures
  has_many :captions
  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: {minimum: 3}
  validates :address, presence: true, length: {minimum: 3}
  validates :description, presence: true, length: {minimum: 2}
  validates :picture, presence: true
  validates :caption, presence: true, length: {minimum: 3}
end