class ParticipationsController < ApplicationController
 def new
 	@user = current_user
 end

 def create
 	@participation = Participation.new(params)
 end





 private
 	def participation_params
 		params.require(:particpation).permit()
 	end
end
