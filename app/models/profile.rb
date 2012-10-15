class Profile < ActiveRecord::Base
  belongs_to :user
  #has_and_belongs_to_many :projects

  attr_accessible :user_id, :name, :entity, :orgtype, :profession, :skills,
                  :need

  has_many :relations
  has_many :projects, :through => :relations
end
