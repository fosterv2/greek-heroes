class HerosController < ApplicationController
    before_action :set_hero, only: [:show, :edit, :update]

    def index
        @heroes = Hero.all
    end

    def show
    end
    
    def new
        @hero = Hero.new
    end

    def create
        @hero = Hero.new(hero_params)
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
        params.require(:hero).permit(:name, :age, :power, :god_id, :user_id)
    end
end
