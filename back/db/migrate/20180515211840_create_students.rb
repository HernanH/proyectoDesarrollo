class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :rut
      t.string :nombre
      t.string :correo
      t.string :estado
      t.datetime :fechainscripcion
      t.float :ppa

      t.timestamps
    end
  end
end
