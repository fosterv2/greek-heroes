class GodsController < ApplicationController
    before_action :require_logged_in
    
    def index
        @gods = God.all
    end

    def show
        @god = God.find(params[:id])
        @heroes = @god.children
    end
end
