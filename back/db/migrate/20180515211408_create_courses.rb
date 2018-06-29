class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :nombre
      t.string :jornada
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
