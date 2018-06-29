class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.float :nota
      t.datetime :fechaevaluacion
      t.string :tipoevaluacion
      t.float :ponderacion
      t.references :c_student, foreign_key: true

      t.timestamps
    end
  end
end
