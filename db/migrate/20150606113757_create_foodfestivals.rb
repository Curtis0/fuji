class CreateFoodfestivals < ActiveRecord::Migration
  def change
    create_table :foodfestivals do |t|
      t.string :what
      t.string :where
      t.time :when_time
      t.date :when_start
      t.datetime :when_finish
      t.string :why

      t.timestamps null: false
    end
  end
end
