class PartnersController < ApplicationController
  layout 'partner'
  before_filter :set_tracking

  def index
  	go
  end
  
  def get_url
    l = Partner.find(params[:id])
    if l.lender_tail.nil?
      @lender_url = l.lender_link
    else
      @lender_url = l.lender_link + l.lender_tail + @conversion_key
    end
  end  


  def redirect_values
    #See if the page code is known if not assign it unknown
    #assign unknown page if no page param sent in
    params[:page]="0000" if params[:page].nil?
    if Page.find_by_page_code(params[:page])
        @page = params[:page]
    else
        @page = "0000"
    end
    #See if the source is known if not assign it unknown
    #assign unknown source if no src sent in
    session[:src]="0000" if session[:src].nil? 
    if Source.find_by_src_code(session[:src][0,4])
        @source = session[:src]
    else
        @source = "0000"
    end
    #sets a random number sent to affiliates as variable
    @conversion_key=SecureRandom.hex(10)
    #saves ad campaign data conveersion_key to database
    Track.create(:src_code => @source, :page_code => @page, :campaign => session[:cpg], :ad_group => session[:adg], :kw => session[:k], :creative => session[:c], :placement => session[:p], :conversion_key => @conversion_key, :partner_id => params[:id])
    get_url
    # @lender_url deleted this. not sure what it was doing.
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

  def adgo
    #If there is an ID go to lender app else return to the hound
    if params[:id].nil?
      redirect_to(:controller => 'homes', :action => 'index')
    else
    redirect_values
    end
    redirect_to(@lender_url)
  end
end
