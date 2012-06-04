class PartnersController < ApplicationController

  before_filter :set_tracking

  def index
  	go
  end
  
  def get_url
    l = Partner.find(params[:id])
    if l.lender_tail.nil?
      @lender_url = l.lender_link
    else
      @lender_url = l.lender_link + l.lender_tail + @page + @source 
    end
  end  


  def redirect_values
    #See if the page code is known if not assign it unknown
    if Page.find_by_page_code(params[:page])
        @page = params[:page]
    else
        @page = "0000"
    end
    #See if the source is known if not assign it unknown
    if Source.find_by_src_code(session[:src])
        @source = session[:src]
    else
        @source = "0000"
    end
    get_url
    @lender_url
    @lenders = Partner.all
  end

  def go
  	#If there is an ID go to lender app else return to the hound
  	if params[:id].nil?
  		redirect_to(:controller => 'homes', :action => 'index')
  	else
	  redirect_values
    end
  end

end
