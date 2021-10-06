class Building < ApplicationRecord

    validates(:nombre, presence: true)
    #validates(:nombre, uniqueness: true)
    
    validates(:direccion, presence: true)
    #validates(:direccion, uniqueness: true)
    
    validates(:ciudad, presence: true)
    

end

