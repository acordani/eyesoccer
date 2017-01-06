class EventsController < ApplicationController
	before_action :authenticate_user!
	def new
		@trainingtype = Trainingtype.new
		@event = Event.new

	end

	def create

		@event = current_user.events.new(event_params)
		@trainingtype = Trainingtype.find(params[:trainingtype_id])
		@event.trainingtype_id = @trainingtype.id
		if @event.save
			redirect_to root_path
		else
			render :new
		end
	end


	private

	def event_params
		params.require(:event).permit(:starts_at, :ends_at, :type)
	end

end
