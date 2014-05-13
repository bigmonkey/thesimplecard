class PartnersController < ApplicationController
  layout 'partner'

  def show
    #If there is an ID go to lender website else return to the hound
    if params[:id].blank? || Partner.find_by_id(params[:id]).nil?
      redirect_to("/")
    else
      p = Partner.find(params[:id])
      if p.lender_tail.blank?
        @lender_url = p.lender_link
      else
        @lender_url = p.lender_link + p.lender_tail
      end
    end
  end

end
