class Cat < ActiveRecord::Base
  attr_accessible :name, :color, :age, :temperment
  validates :name, :presence => true, format: { with:  /\A[a-zA-Z\s\.]+\z/, 
    message: "only allows letters and spaces" }, length: { minimum: 2 },
    uniqueness: true
  validates :color, :presence => true, inclusion: { in: %w(red blue green yellow brown black white orange),
    message: "That is not a valid color for a cat" }
  validates :age, :presence => true, numericality: { only_integer: true, 
    less_than: 100, message: "Cat age must be a number below 100." }
  validates :temperment, :presence => true, exclusion: { in: %w(evil mean), 
    message: "No bad cats allowed!" }
    
  has_one :hat, :class_name => "Hat", :foreign_key => "cat_id"
  
end
