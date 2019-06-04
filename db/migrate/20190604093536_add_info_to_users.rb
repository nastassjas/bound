class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :description, :text
    add_column :users, :mobile_phone, :string
    add_column :users, :birth_year, :integer
    add_column :users, :admin, :boolean
  end
end
