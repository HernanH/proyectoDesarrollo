class Classroom < ApplicationRecord
  #asociacion de modelos
  belongs_to :course
  has_many :audios, dependent: :destroy
  has_many :videos, dependent: :destroy

  # validacion
  validates_presence_of :area, :tema, :cupos, :direccion
  validates :cupos, numericality: { only_integer: true} 
end
