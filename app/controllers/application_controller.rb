class ApplicationController < ActionController::Base
    helper_method :logged_in, :current_user, :require_logged_in

    def current_user
        @user = (User.find_by(id: session[:user_id]) || User.new)
    end
    
    def logged_in?
        current_user.id != nil
    end

    def require_logged_in
        return redirect_to('/welcome') unless logged_in?
    end
end
