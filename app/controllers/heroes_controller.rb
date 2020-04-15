class HeroesController < ApplicationController
    before_action :set_hero, only: [:show, :edit, :update]
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
        if @hero.save
            redirect_to @hero
        else
            flash[:messages] = "Errors!"
            render :new
        end
    end

    def edit
    end

    def update
        if @hero.update(hero_params)
            redirect_to @hero
        else
            flash[:messages] = "Errors!"
            render :new
        end
    end

    def destroy
        @hero.destroy
        redirect_to heros_path
    end

    private

    def set_hero
        @hero = Hero.find(params[:id])
    end

    def hero_params
        params.require(:hero).permit(:name, :age, :affinity, :god_id, :user_id)
    end
end
