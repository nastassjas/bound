class AddProjectIdToMissions < ActiveRecord::Migration[5.2]
  def change
    add_reference :missions, :project, foreign_key: true
  end
end
