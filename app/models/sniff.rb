class Sniff < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_many :lenders
  
end
