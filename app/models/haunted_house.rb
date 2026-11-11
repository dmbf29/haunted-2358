class HauntedHouse < ApplicationRecord
  # associations
  has_many :monsters, dependent: :destroy # haunted_house.monsters
  # validations
  validates :name, presence: true
end
