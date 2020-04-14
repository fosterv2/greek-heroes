class SessionsController < ApplicationController
    def welcome
        if logged_in?
            redirect_to '/'
        end
    end

    def about
    end

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:sessions][:username])
        @user = @user.try(:authenticate, params[:sessions][:password])
        if @user
            session[:user_id] = @user.id
            redirect_to '/'
        else
            flash[:messages] = "Error!"
            render :new
        end
    end

    def destroy
        session.delete :user_id
        redirect_to '/'
    end
end
