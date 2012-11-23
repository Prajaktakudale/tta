class Project < ActiveRecord::Base
  has_many :project_metadata
  attr_accessible :authorization_level, :name, :type_of_report
  validates_uniqueness_of :name
end
