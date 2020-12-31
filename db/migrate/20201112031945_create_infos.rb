class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :name
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
