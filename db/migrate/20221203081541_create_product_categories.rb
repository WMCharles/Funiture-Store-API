class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories do |t|
      t.belongs_to :category
      t.belongs_to :product

      t.timestamps
    end
  end
end
