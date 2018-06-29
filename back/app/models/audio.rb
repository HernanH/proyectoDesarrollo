class Audio < ApplicationRecord
  #asociacion de modelos
  belongs_to :classroom

  # validacion
  validates_presence_of :nombre, :url
end
