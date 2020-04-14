class GodsController < ApplicationController
    def index
        @gods = God.all
    end

    def show
        @god = God.find(params[:id])
    end
end
