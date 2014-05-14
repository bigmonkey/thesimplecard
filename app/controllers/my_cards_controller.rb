class MyCardsController < ApplicationController

	before_action :authenticate_user!

	def index
		@user=current_user
	end

	def new
		@card = MyCard.new
	end
	def show
		@card = MyCard.find(params[:id])
	end

	def edit
		@card = MyCard.find(params[:id])
	end
end
