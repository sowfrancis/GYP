class ParticipationsController < ApplicationController

 def create
 	participation = Participation.new(user_id: current_user.id, event_id: params[:format])
 	if participation.save
 		redirect_to event_path(participation.event_id)
 	end
 end

 def delete
	participation = current_user.participations.where(event_id: params[:format])
 	if !!participation.delete_all
 		redirect_to event_path(params[:format])
 	end
 end






 private
 	def participation_params
 		params.require(:particpation).permit()
 	end
end
