class ApplicationController < ActionController::Base
    include ApplicationHelper
    include UsersHelper # inclure dans tous les controllers le helper "UsersHelper" créé dans le fichier app/helpers/sessions_helper.rb
    #include ParticipationsHelper
    
    helper_method :current_user

    def after_sign_out_path_for(current_user)
      root_path       
    end


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:email, :age, :description, :country, :discord_tag, :player_type, :steam, :availablity, :note, :riot_games, :uplay, :psn, :nintendo, :epic_game, :battlenet, :origin, :xbox)
      end
    end

end
