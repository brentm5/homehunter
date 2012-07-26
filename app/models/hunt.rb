class Hunt < ActiveRecord::Base
  validates :name, :description, :presence => :true

  attr_accessible :description, :name
end
