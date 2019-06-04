class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.string :phone_number
      t.string :address
      t.string :email
      t.string :status
      t.string :registration_nb

      t.timestamps
    end
  end
end
