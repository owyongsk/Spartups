class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :entity
      t.string :profession
      t.text :skills
      t.integer :user_id

      t.timestamps
    end
  end
end
