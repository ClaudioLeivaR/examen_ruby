class Apartment < ApplicationRecord
  belongs_to :building

  validates(:numero, presence: true)
  validates(:building_id, presence: true)
 
end
