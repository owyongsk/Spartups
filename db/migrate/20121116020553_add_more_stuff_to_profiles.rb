class AddMoreStuffToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :org_website, :string
    add_column :profiles, :phone_number, :integer
    add_column :profiles, :phone_display, :boolean
    add_column :profiles, :email_display, :boolean
  end
end
