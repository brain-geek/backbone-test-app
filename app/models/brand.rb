class Brand < ActiveRecord::Base
  attr_accessible :title

  validates_presence_of :title

  has_and_belongs_to_many :campaigns
end
