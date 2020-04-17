class BattlesController < ApplicationController
    before_action :require_logged_in

    def show
        @battle = Battle.find(params[:id])
        @hero = @battle.hero
        @monster = @battle.monster
    end

    def new
        @battle = Battle.new
        @monsters = Monster.all_living
        if params[:hero]
            @hero = Hero.find(params[:hero][:id])
            flash[:hero_id] = @hero.id
        else
            @heroes = Hero.living_heroes(current_user)
        end
    end

    def create
        @battle = Battle.new(battle_params)
        if !@battle.hero
            @battle.hero = Hero.find(flash[:hero_id])
        end
        if @battle.save
            @battle.decide_winner
            redirect_to @battle
        else
            flash[:messages] = @battle.errors.full_messages
            @monsters = Monster.all_living
            redirect_to new_battle_path
        end
    end

    private

    def battle_params
        params.require(:battle).permit(:location, :hero_id, :monster_id)
    end
end
