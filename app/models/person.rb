class Person < ActiveRecord::Base
  has_many :works

  attr_accessible :name

  validates :name, :presence => true

  def start
    works.create!(:started_at => Time.now)
  end

  def finish
    work = works.where(:finished_at => nil).first
    # work.update_attributes!(:finished_at => Time.now)
    work.finished_at = Time.now
    work.save!
  end


end
