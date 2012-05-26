class Work < ActiveRecord::Base
  belongs_to :person
  attr_accessible :finished_at, :started_at
end
