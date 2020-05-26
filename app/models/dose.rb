class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_one_attached :photo
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :description }
end
