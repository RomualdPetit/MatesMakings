class ApplicationController < ActionController::Base
    include ApplicationHelper
    include UsersHelper # inclure dans tous les controllers le helper "UsersHelper" créé dans le fichier app/helpers/sessions_helper.rb
    #include ParticipationsHelper
    before_action :set_navbar

    helper_method :current_user
    
    def after_sign_in_path_for(current_user)
      @user = User.find_by(params[:email])
      edit_user_path(@user)
    end

  
    def after_sign_out_path_for(current_user)
      root_path       
    end


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:email, :age, :description, :country, :discord_tag, :player_type, :steam, :availablity, :note, :riot_games, :uplay, :psn, :nintendo, :epic_game, :battlenet, :origin, :xbox)
      end
    end

    

end
