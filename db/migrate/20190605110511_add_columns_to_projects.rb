class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :description, :text
    add_column :projects, :address, :string
    add_column :projects, :category, :string
  end
end
