class CStudent < ApplicationRecord
  #asociacion de modelos
  belongs_to :course
  belongs_to :student
  has_many :homeworks, dependent: :destroy
  has_many :tests, dependent: :destroy

  # validacion
  validates_presence_of :promedio, :asistencia
  validates :promedio, numericality: { only_float: true }
  validates :asistencia, numericality: { only_float: true }

end
