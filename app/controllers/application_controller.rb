class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def set_tracking
  	!params[:src].nil? ? session[:src] = params[:src] : session[:src] = session[:src]
  end

  def set_secured_constants
    @pur_balance =  500.0 #revolving purchase balance
    @cash_balance = 0.0 #cash balance balance
    @duration = 8.0  #number of months someone keeps the secured car, ad decimal so not integer  
  end
  
  def set_prepaid_constants
    @wkly_load =  300 #average cash loaded to card
    @direct_dep = false  #true -- has direct depoist. Values: true or false, case doesn't matter
    @wkly_trans = 8  #number of signature transactions
    @wkly_atm_bal_chk = 0 #number of atm balance inquiries
    @wkly_atm_cash = 0 #number of atm cash withdrawels
    @prepaid_duration = 18 #numner of months keeping the card  	
  end
   
end
