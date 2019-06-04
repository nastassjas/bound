class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.references :charity, foreign_key: true
      t.references :user, foreign_key: true
      t.string :admin

      t.timestamps
    end
  end
end
