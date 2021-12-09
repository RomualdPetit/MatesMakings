module ParticipationsHelper

      def current_user
        User.find_by(id: session[:user_id])
      end
    
      def log_in(user)
        session[:user_id] = user.id
      end

      def find_event
        @event = Evnet.find(params[:event_id])
      end
    
      def find_event_bis
        @event = Evnet.find(params[:event_id])
      end
    

end
