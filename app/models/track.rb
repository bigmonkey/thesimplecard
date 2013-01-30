class Track < ActiveRecord::Base
	attr_accessible :src_code, :page_code, :campaign, :ad_group, :kw, :creative, :placement, :conversion_key, :partner_id
end
