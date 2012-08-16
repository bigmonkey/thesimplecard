class Secured < ActiveRecord::Base
  # attr_accessible :title, :body
  scope :by_top_rank, order("secureds.rating DESC")  
end
