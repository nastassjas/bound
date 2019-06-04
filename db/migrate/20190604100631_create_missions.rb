class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :volunteers_count
      t.string :address
      t.references :charity, foreign_key: true
      t.string :category
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
