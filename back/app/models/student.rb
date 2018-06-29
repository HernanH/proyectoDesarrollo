class Student < ApplicationRecord
  #asociacion de modelos
  has_one :calendar, dependent: :destroy
  has_many :c_students, dependent: :destroy
  has_many :courses, through: :c_students

  # validacion
  validates_presence_of :nombre, :correo, :estado, :fechainscripcion, :ppa
  validates :ppa , numericality: { only_float: true }
end
