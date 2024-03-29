class Offer < ActiveRecord::Base
  enum type_offer: [:Practicas, :Trabajo]
  validates :title, :description, :type_offer, :salary, :requirements, :location, presence: true
  validates :salary, numericality: { only_integer: true }
  has_many :user_offers
  has_many :users, through: :user_offers
end
