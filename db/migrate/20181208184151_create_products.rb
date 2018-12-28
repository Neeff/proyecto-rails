class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.boolean :available

      t.timestamps
    end
    add_attachment :products, :image
  end
end
