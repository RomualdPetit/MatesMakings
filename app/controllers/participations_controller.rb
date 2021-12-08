class ParticipationsController < ApplicationController
    #before_action :find_event
    
    def create
      #@event = Event.find(params[:id])
     

      @participation = current_user.participations.new(participations_params)

      if !@participation.save
        flash[:notice] = @participation.errors.full_message.to_sentence
       redirect_to @participation.event        
     end   
    end

    def destroy
     @participation = current_user.participations.find(params[:id])
     event = @participation.event
     @participation.destroy
     redirect_to event
    end



private

  def participations_params
    params.require(:participation).permit(:event_id)
  end


end


