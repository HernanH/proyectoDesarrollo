class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.string :area
      t.string :tema
      t.integer :cupos
      t.string :direccion
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
