class Shop < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  # Validation
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
