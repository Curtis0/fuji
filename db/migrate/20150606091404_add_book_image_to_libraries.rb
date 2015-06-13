class AddBookImageToLibraries < ActiveRecord::Migration
  def change
    add_column :libraries, :book_image, :string
  end
end
