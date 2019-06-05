class RemoveColumnsFromMissions < ActiveRecord::Migration[5.2]
  def change
    remove_column :missions, :category, :string
    remove_column :missions, :address, :string
  end
end
