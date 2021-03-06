class Relation < ActiveRecord::Base
  belongs_to :profile
  belongs_to :project

  attr_accessible :profile_id, :project_id, :relationship
end
