class CreateNewProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :new_projects do |t|
      t.string :title
      t.text :description
      t.string :img_url
      t.string :date

      t.timestamps
    end
  end
end
