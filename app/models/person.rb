class Person < ActiveRecord::Base
  has_many :works

  attr_accessible :name

  validates :name, :presence => true
end
