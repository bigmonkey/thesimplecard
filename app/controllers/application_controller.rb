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
    @atm_surcharge = 2.50 #fee charged by ATM owners for withdrawals
    @mthly_load =  3000 #average cash loaded to card
    @mthly_loads = 1 #number of loads
    @direct_dep = false  #true -- has direct depoist. Values: true or false, case doesn't matter
    @wkly_trans = 8  #number of signature transactions
    @wkly_atm_bal_chk = 0 #number of atm balance inquiries
    @wkly_atm_cash = 0 #number of atm cash withdrawels
    @wkly_atm_network_cash = 2 #number of atm in network cash withdrawals
    @prepaid_duration = 18 #numner of months keeping the card  
    @calls = 2 #live customer service per month	
    @atm_owner_fee = 2.50 #fee charged by ATM owners
  end
   
end
