class Calendar < ApplicationRecord
  #asociacion de modelos
  belongs_to :student

  # validacion
  validates_presence_of :fecha

end
