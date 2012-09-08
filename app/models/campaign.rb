class Campaign < ActiveRecord::Base
  attr_accessible :brand_ids, :title, :lang

  has_and_belongs_to_many :brands
  validates_presence_of :title
end
