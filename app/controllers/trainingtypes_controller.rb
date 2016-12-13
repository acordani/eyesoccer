class TrainingtypesController < ApplicationController

	before_action :authenticate_user!
	before_action :set_trainingtype, only: [:show, :edit, :update, :destroy]

	def index
		@trainingtypes = Trainingtype.all
	end

	def show
		
	end

	def new
		@trainingtype = current_user.trainingtypes.build(params[:id])
	end

	def create
		@trainingtype = current_user.trainingtypes.build(trainingtype_params)
		if @trainingtype.save
			redirect_to root_path
		else
			render :new
		end
	end


	private

	def set_trainingtype
		@trainingtype = Trainingtype.find(params[:id])
	end

	def trainingtype_params
		params.require(:trainingtype).permit(:category, :subcategory)
	end



end
