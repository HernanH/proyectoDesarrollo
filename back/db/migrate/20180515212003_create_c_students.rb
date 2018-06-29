class CreateCStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :c_students do |t|
      t.float :asistencia
      t.float :promedio
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
