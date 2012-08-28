class SecuredsController < ApplicationController
  
  layout 'public'
  
  before_filter :set_tracking

  def index
      # set maximum and minimum usage criteria for variable checks
      max_balance = 3000
      max_duration = 48
      duration_range = (1..48)
      pur_balance_range = (0..max_balance)
      cash_balance_range = (0..max_balance)

      @pur_balance =  400.0 #revolving purchase balance
      @cash_balance = 100.0 #cash balance balance
      @duration = 20.0  #number of months someone keeps the secured car, ad decimal so not integer


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
