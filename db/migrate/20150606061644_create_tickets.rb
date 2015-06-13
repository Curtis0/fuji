class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :price
      t.string :email_address
      t.boolean :tent_site
      t.text :notes

      t.timestamps null: false
    end
  end
end
