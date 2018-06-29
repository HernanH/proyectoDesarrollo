class CreateCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars do |t|
      t.date :fecha
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
