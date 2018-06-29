class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :nombre
      t.string :correo
      t.integer :edad
      t.string :rut
      t.string :especialidad

      t.timestamps
    end
  end
end
