class Monster < ApplicationRecord
  belongs_to :haunted_house # monster.haunted_house
  validates :name, presence: true, uniqueness: true
end
