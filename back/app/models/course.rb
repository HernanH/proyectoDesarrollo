class Course < ApplicationRecord
  #asociacion de modelos
  belongs_to :teacher
  has_many :classrooms, dependent: :destroy
  has_many :c_students, dependent: :destroy
  has_many :students, through: :c_students

  # validacion
  validates_presence_of :nombre, :jornada

end
