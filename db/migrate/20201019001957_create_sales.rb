class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.decimal :taxe
      t.integer :user_id
      t.integer :client_id

      t.timestamps
    end
  end
end
