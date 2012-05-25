class AlterTables < ActiveRecord::Migration
  def up
  	remove_column("lenders", "link")
  	remove_column("lenders", "url_code")
  	change_column("lenders", "lender_type", :string, :limit => 45)
    change_column("lenders", "governing_law", :string, :limit => 45)
    change_column("lenders", "max_loan", :string, :limit => 45)
    change_column("lenders", "name", :string, :limit => 45)
  end

  def down
    change_column("lenders", "name", :string, :default => "")
    change_column("lenders", "max_loan", :string, :default => "")
    change_column("lenders", "governing_law", :string, :default => "")
  	add_column("lenders", "url_code", :string)
  	add_column("lenders", "link", :string)
   end
end
