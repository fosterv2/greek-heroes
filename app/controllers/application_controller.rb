class ApplicationController < ActionController::Base
    helper_method :logged_in, :current_user, :require_logged_in

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        if logged_in?
            @user = User.find(session[:user_id])
        end
    end

    def require_logged_in
        return redirect_to('/login') unless logged_in?
    end
end
