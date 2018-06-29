class Homework < ApplicationRecord
  #asociacion de modelos
  belongs_to :c_student

  # validacion
  validates_presence_of :nombretarea, :fechapublicacion, :fechaexpiracion

end
