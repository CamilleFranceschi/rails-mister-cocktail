class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient
  validates :description, presence: true, uniqueness: true

end
