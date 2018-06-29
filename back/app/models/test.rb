class Test < ApplicationRecord
  #asociacion de modelos
  belongs_to :c_student

  # validacion
  validates_presence_of :nota, :fechaevaluacion, :tipoevaluacion, :ponderacion
  validates :nota , numericality: { only_float: true }
  validates :ponderacion , numericality: { only_float: true }
end
