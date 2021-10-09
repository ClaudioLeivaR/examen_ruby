class Apartment < ApplicationRecord
  belongs_to :building
  validate :no_duplicados
  validates(:numero, presence: true)
  #validates :numero, length: {maximum: 4,too_long: "%{count} characters is the maximum allowed" }
  validates(:building_id, presence: true)
  



  private
    def no_duplicados
    

    encontrados = self.building.apartment.select {|depto|
    depto.numero == self.numero
    }
      if encontrados.count > 1
        self.errors.add(:error_duplicado,"El departamento ingresado ya existe en la base de datos")
      end
    end
end


