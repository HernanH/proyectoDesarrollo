class CreateAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :audios do |t|
      t.string :nombre
      t.string :url
      t.references :classroom, foreign_key: true

      t.timestamps
    end
  end
end
