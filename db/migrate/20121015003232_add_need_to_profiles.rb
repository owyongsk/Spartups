class AddNeedToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :need, :string
  end
end
