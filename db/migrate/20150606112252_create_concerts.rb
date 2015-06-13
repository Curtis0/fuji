class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :artist
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.integer :cost

      t.timestamps null: false
    end
  end
end
