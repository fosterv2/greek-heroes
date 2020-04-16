class User < ApplicationRecord
    has_many :heros
    has_secure_password

    validates :full_name, :username, presence: true
    validates :username, uniqueness: true

    def self.rank_users
        self.all.sort_by { |user| Hero.best_hero_wins(Hero.living_heroes(user)) }.reverse
    end
end
