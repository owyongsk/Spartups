class Profile < ActiveRecord::Base
  belongs_to :user
  #has_and_belongs_to_many :projects

  attr_accessible :user_id, :name, :entity, :orgtype, :profession, :skills, 
                  :need, :pro_level, :join_startup, :need_advisors,
                  :need_cofounder, :need_temp, :need_investors, 
                  :facebook, :twitter, :linkedin, :org_website,
                  :phone_display, :email_display, :phone_number

  has_many :relations
  has_many :projects, :through => :relations
end
