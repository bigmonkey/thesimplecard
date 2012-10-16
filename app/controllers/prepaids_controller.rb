class PrepaidsController < ApplicationController

  layout 'public'
  
  before_filter :set_tracking
  before_filter :set_prepaid_constants

  def index
      # set maximum and minimum usage criteria for variable checks
      # need to change public.js slider settings as well in six places.
      # then need to update blog settings and any files that point to public.js, i.e. on resources.pdh.com

      wkly_trans_range = (0..@max_wkly_purchase)
      wkly_atm_in_net_range = (0..@max_wkly_atm_in_net)
      wkly_atm_out_net_range = (0..@max_wkly_atm_out_net)
      mthly_load_range = (0..@max_mthly_load)
      mthly_loads_range = (0..@max_mthly_loads)
      wkly_atm_bal_chk_range = (0..@max_wkly_atm_inq)
      calls_range = (0..@max_calls)
      prepaid_duration_range = (1..@max_prepaid_duration)


      # if params hold different criteria reset criteria
#      if !params[:criteria].nil? then # do params exist
#        if (params[:criteria][:CalcATMInq].is_a? String) && (params[:criteria][:CalcATMCash].is_a? String) && (params[:criteria][:CalcDirectDep].is_a? String) && (params[:criteria][:CalcWklyTrans].is_a? String) && (params[:criteria][:CalcWklyLoad].is_a? String) && (params[:criteria][:CalcPrepaidDur].is_a? String) then # are the params strings, i.e. will to_i work
#          if prepaid_duration_range === params[:criteria][:CalcPrepaidDur].to_i && wkly_trans_range === params[:criteria][:CalcWklyTrans].to_i && wkly_atm_bal_chk_range === params[:criteria][:CalcATMInq].to_i && wkly_atm_cash_range === params[:criteria][:CalcATMCash].to_i && mthly_load_range === params[:criteria][:CalcWklyLoad].to_i then  # check that numbers are in range#

#            @mthly_load =  params[:criteria][:CalcWklyLoad].to_i
#            (@direct_dep = true) if (params[:criteria][:CalcDirectDep] == "true")
#            @wkly_trans = params[:criteria][:CalcWklyTrans].to_i
#            @wkly_atm_bal_chk = params[:criteria][:CalcATMInq].to_i
#            @wkly_atm_cash = params[:criteria][:CalcATMCash].to_i
#            @prepaid_duration = params[:criteria][:CalcPrepaidDur].to_i
#      	  end
#        end
#      end  
      @prepaids = Prepaid.live.by_top_rank    
  	  @page = "0008" #sets page for tracking to 'pre-paid-cards'
  end




end
