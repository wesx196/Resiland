class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :title
      t.text :description
      t.string :img_url
      t.decimal :price

      t.timestamps
    end
  end
end
