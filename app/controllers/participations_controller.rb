class ParticipationsController < ApplicationController
    before_action :find_event
    def create
        Participation.create(user: current_user, game: @game) 
        flash[:success] = "Vous avez rejoint la communauté d'un jeu "
        redirect_to root_path
      end

end
