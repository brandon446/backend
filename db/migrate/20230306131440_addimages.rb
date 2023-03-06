class Addimages < ActiveRecord::Migration[6.1]
  def change
    add_column :mechanics, :image_url, :string
  end
end
