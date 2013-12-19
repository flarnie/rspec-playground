class Hat < ActiveRecord::Base
  attr_accessible :cat_id, :color, :type
  validates :cat_id, :color, :type, :presence => true
  
  belongs_to :cat, :class_name => "Cat", :foreign_key => "cat_id"
end
