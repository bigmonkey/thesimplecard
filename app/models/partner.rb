class Partner < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :lender, {:foreign_key =>"id"}

end
