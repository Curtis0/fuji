class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.string :publisher
      t.date :release_date
      t.string :ISBN

      t.timestamps null: false
    end
  end
end
