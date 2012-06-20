class AddReviewUrlToLenders < ActiveRecord::Migration
  def change
    add_column :lenders, :review_url, :string
  end
end
