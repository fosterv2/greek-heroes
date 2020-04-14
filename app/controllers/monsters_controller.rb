class MonstersController < ApplicationController
    before_action :require_logged_in
    
    def index
        @monsters = Monster.all
    end

    def show
        @monster = Monster.find(params[:id])
    end
end
