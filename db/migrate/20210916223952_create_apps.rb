class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :email
      t.string :location
      t.datetime :date

      t.timestamps
    end
  end
end
