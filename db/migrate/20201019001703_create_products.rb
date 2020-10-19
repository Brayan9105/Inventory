class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.string :description
      t.integer :stock
      t.decimal :price
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
