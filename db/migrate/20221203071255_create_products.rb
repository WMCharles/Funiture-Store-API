class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :image_url
      t.belongs_to :category

      t.timestamps
    end
  end
end
