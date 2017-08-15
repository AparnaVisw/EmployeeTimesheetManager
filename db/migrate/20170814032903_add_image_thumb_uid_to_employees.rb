# added field for image htumbs for bigger images
class AddImageThumbUidToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :image_thumb_uid, :string
  end
end
