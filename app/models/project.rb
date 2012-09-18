class Project < ActiveRecord::Base
  #has_and_belongs_to_many :profiles

  has_many :relations
  has_many :profiles, :through => :relations

  attr_accessible :title, :desc, :need
end
