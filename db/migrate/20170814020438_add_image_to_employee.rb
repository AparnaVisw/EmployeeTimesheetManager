class AddImageToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :image_uid, :string
  end
end
