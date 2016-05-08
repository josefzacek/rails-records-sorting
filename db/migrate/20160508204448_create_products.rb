class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.integer :position

      t.timestamps null: false
    end
  end
end
