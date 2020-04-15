class User < ApplicationRecord
    has_many :heros
    has_secure_password

    def self.rank_users
        self.all.sort_by { |user| Hero.win_average(Hero.living_heroes(user)) }.reverse
    end
end
