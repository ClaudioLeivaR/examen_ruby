class Apartment < ApplicationRecord
  belongs_to :building

  validates(:numero, presence: true)
  validates(:building_id, presence: true)
  validates(:building_id, uniqueness: true)
 
end
