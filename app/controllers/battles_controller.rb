class BattlesController < ApplicationController
    before_action :require_logged_in

    def new
        @battle = Battle.new
    end

    def create
        @battle = Battle.new(battle_params)
    end

    private

    def battle_params
        params.require(:battle).permit(:location, :hero_id, :monster_id)
    end
end
