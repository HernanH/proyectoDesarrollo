class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :homeworks do |t|
      t.string :nombretarea
      t.datetime :fechapublicacion
      t.datetime :fechaexpiracion
      t.references :c_student, foreign_key: true

      t.timestamps
    end
  end
end
