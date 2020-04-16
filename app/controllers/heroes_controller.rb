class HeroesController < ApplicationController
    before_action :set_hero, only: [:show, :edit, :update, :destroy]
    before_action :require_logged_in

    def generate
        @hero = Hero.generate_hero(current_user)
        redirect_to @hero
    end

    def index
        @living_heroes = Hero.living_heroes(current_user)
        @dead_heroes = Hero.dead_heroes(current_user)
    end

    def show
    end
    
    def new
        @hero = Hero.new
    end

    def create
        @hero = Hero.new(hero_params)
        @hero.user = current_user
        @hero.alive = true
        @hero.affinity = @hero.god.affinity
        if @hero.save
            redirect_to @hero
        else
            flash[:messages] = @hero.errors.full_messages
            redirect_to new_hero_path
        end
    end

    def edit
    end

    def update
        if @hero.update(hero_params)
            redirect_to @hero
        else
            flash[:messages] = @hero.errors.full_messages
            redirect_to edit_hero_path(@hero)
        end
    end

    def destroy
        @hero.destroy
        redirect_to heroes_path
    end

    private

    def set_hero
        @hero = Hero.find(params[:id])
    end

    def hero_params
        params.require(:hero).permit(:name, :age, :god_id)
    end
end
