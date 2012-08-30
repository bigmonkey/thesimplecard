class SecuredsController < ApplicationController
  
  layout 'public'
  
  before_filter :set_tracking

  def index
      # set maximum and minimum usage criteria for variable checks
      # need to change public.js slider settings as well in six places.
      # then need to update blog settings and any files that point to public.js, i.e. on resources.pdh.com
      max_balance = 1000
      max_duration = 36
      duration_range = (1..max_duration)
      pur_balance_range = (0..max_balance)
      cash_balance_range = (0..max_balance)

      @pur_balance =  600.0 #revolving purchase balance
      @cash_balance = 0.0 #cash balance balance
      @duration = 8.0  #number of months someone keeps the secured car, ad decimal so not integer


      # if params hold different criteria reset criteria
      if !params[:criteria].nil? then # do params exist
        if (params[:criteria][:PurBal].is_a? String) && (params[:criteria][:CashBal].is_a? String) && (params[:criteria][:Duration].is_a? String) then # are the params strings, i.e. will to_i work
          if pur_balance_range === params[:criteria][:PurBal].to_i && cash_balance_range === params[:criteria][:CashBal].to_i && duration_range === params[:criteria][:Duration].to_i then  # check that numbers are in range
      		  @pur_balance = params[:criteria][:PurBal].to_i
        		@cash_balance = params[:criteria][:CashBal].to_i
        		@duration = params[:criteria][:Duration].to_i
      	  end
        end
      end  
      @secureds = Secured.live.by_top_rank    
  	  @page = "0005" #sets page for tracking to 'secured-cards'
  end

  def show
  end

end
