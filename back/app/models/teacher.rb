class Teacher < ApplicationRecord
  # asociacion de modelos
  has_many :courses, dependent: :destroy

  # validacion
  validates_presence_of :nombre, :correo, :edad, :rut, :especialidad
  validates :edad, numericality: { only_integer: true }
end
