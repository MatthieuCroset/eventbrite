class Event < ApplicationRecord
  validates :start_date, presence: true
  validates :duration, numericality: { greater_than_or_equal_to: 0 }
  validates :title, length: {in: 5..140 }
  validates :description, length: {in: 2..1000 }
  validates :price, length: {in: 1..1000 }
  validates :location, presence: true

  has_many :attendances
  has_many :users, through: :attendances
end
