class MyCardsController < ApplicationController

	before_action :authenticate_user!

	def index
		@user=current_user
	end

	def new
		@card = MyCard.new
	end

	def create
		clean_params
		@card = MyCard.new(card_params)
		@card.user = current_user
		if @card.save
			redirect_to my_cards_path
		else
			render 'new'
		end
	end

	def show
		@card = MyCard.find(params[:id])
	end

	def edit
		@card = MyCard.find(params[:id])
	end

	def update
		clean_params
		@card = MyCard.find(params[:id])
		if @card.update_attributes(card_params)
			redirect_to my_cards_path
		else
			render 'edit'
		end
	end

	def destroy
		MyCard.find(params[:id]).destroy
		redirect_to my_cards_path
	end

	private

		def clean_params
			params[:my_card][:annual_fee]=params[:my_card][:annual_fee].gsub(/[^0-9\.]/,'').to_f
			params[:my_card][:purchase_apr]=params[:my_card][:purchase_apr].gsub(/[^0-9\.]/,'').to_f
			params[:my_card][:monthly_balance]=params[:my_card][:monthly_balance].gsub(/[^0-9\.]/,'').to_f
			params[:my_card][:credit_limit]=params[:my_card][:credit_limit].gsub(/[^0-9\.]/,'').to_f
			params[:my_card][:monthly_spend]=params[:my_card][:monthly_spend].gsub(/[^0-9\.]/,'').to_f
		end

		def card_params
			params.require(:my_card).permit(:card_name, :credit_limit, :annual_fee, :purchase_apr, :monthly_spend, :monthly_balance, :phone)
		end

end
