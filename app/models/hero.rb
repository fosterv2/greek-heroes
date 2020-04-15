class Hero < ApplicationRecord
    belongs_to :user
    belongs_to :god
    has_many :battles
    has_many :monsters, through: :battles

    def self.user_heroes(user)
        self.all.select { |hero| hero.user == user && hero.alive }
    end

    def self.generate_hero(user)
        god = God.all.sample
        self.create(
            name: Faker::Ancient.hero,
            age: rand(16..30),
            affinity: god.affinity,
            alive: true,
            god: god,
            user: user
        )
    end
end
