class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :profile_id
      t.integer :project_id
      t.string :relationship

      t.timestamps
    end
  end
end
