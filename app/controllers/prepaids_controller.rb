class PrepaidsController < ApplicationController

  layout 'public'
  
  before_filter :set_tracking

  def index
      # set maximum and minimum usage criteria for variable checks
      # need to change public.js slider settings as well in six places.
      # then need to update blog settings and any files that point to public.js, i.e. on resources.pdh.com
      max_load = 5000
      max_prepaid_duration = 48
      max_wkly_trans = 200
      max_wkly_atm_bal_chk = 20 #number of atm balance inquiries
      max_wkly_atm_cash = 20 #number of atm cash withdrawels
      prepaid_duration_range = (1..max_prepaid_duration)
      wkly_trans_range = (0..max_wkly_trans)
      wkly_atm_bal_chk_range = (0..max_wkly_atm_bal_chk)
      wkly_atm_cash_range = (0..max_wkly_atm_cash)

      @wkly_load =  300 #average cash loaded to card
      @direct_dep = false  #true -- has direct depoist. Values: true or false, case doesn't matter
      @wkly_trans = 8  #number of signature transactions
      @wkly_atm_bal_chk = 0 #number of atm balance inquiries
      @wkly_atm_cash = 0 #number of atm cash withdrawels
      @prepaid_duration = 18 #numner of months keeping the card


      # if params hold different criteria reset criteria
#      if !params[:criteria].nil? then # do params exist
#        if (params[:criteria][:PurBal].is_a? String) && (params[:criteria][:CashBal].is_a? String) && (params[:criteria][:Duration].is_a? String) then # are the params strings, i.e. will to_i work
#          if pur_balance_range === params[:criteria][:PurBal].to_i && cash_balance_range === params[:criteria][:CashBal].to_i && duration_range === params[:criteria][:Duration].to_i then  # check that numbers are in range
#      		  @pur_balance = params[:criteria][:PurBal].to_i
#        		@cash_balance = params[:criteria][:CashBal].to_i
#        		@duration = params[:criteria][:Duration].to_i
#      	  end
#        end
#      end  
      @prepaids = Prepaid.live.by_top_rank    
  	  @page = "0008" #sets page for tracking to 'pre-paid-cards'
  end




end
