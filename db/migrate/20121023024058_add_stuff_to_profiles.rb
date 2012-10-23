class AddStuffToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :pro_level, :string
    add_column :profiles, :join_startup, :boolean
    add_column :profiles, :need_cofounder, :boolean
    add_column :profiles, :need_temp, :boolean
    add_column :profiles, :need_advisors, :boolean
    add_column :profiles, :need_investors, :boolean
    add_column :profiles, :facebook, :string
    add_column :profiles, :linkedin, :string
    add_column :profiles, :twitter, :string
  end
end
