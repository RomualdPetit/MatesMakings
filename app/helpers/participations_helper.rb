module ParticipationsHelper

      def current_user
        User.find_by(id: session[:user_id])
      end
    
      def log_in(user)
        session[:user_id] = user.id
      end

      def find_game
        @game = Game.find(params[:event_id])
      end
    
      def find_game_bis
        @game = Game.find(params[:id])
      end
    

end
