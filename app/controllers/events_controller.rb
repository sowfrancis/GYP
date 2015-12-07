class EventsController < ApplicationController
	before_action :authenticate_user!, except: :index
	def index
		@events = Event.all
	end
	
	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if	@event.save
			redirect_to @event
		else
			render 'new'
		end
	end

	def destroy
		 @event = Event.find(params[:id]).destroy
   	redirect_to events_path
	end

	def edit
		if is_author?(params[:id])

			@event = Event.find(params[:id])
		else
			redirect_to events_path notice: "NO"
		end
	end

	def update
    @event = Event.find(params[:id])
     if @event.update(event_params)
    	redirect_to @event
  	else
    	render 'edit'
  end
  end

	def show
		@event = Event.find(params[:id])
		@comments = @event.comments.all
		@comment = @event.comments.build
		@participants = @event.participants
	end


	def participate
		Participation.create(user_id: current_user.id, event_id: params[:id])
		redirect_to participate_event_path(params[:id])
	end

	def destroy_participate
		Participation.destroy(user_id: current_user.id, event_id: params[:id])
		redirect_to participate_event_path(params[:id])
	end
	
	
	def price
		@price = Participation.cost / @event.participations.count
	end


	private
	
	def is_author?(event_id)
		event = Event.find(event_id)
		event.user_id == current_user.id

	end

	def event_params
		params.require(:event).permit(:name, :venue, :description, :address, :hour, :event_date, :places, :user_id, :cost, :avatar)
	end
end