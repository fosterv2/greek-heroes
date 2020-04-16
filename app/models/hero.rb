class Hero < ApplicationRecord
    belongs_to :user
    belongs_to :god
    has_many :battles
    has_many :monsters, through: :battles

    validates :name, :alive, presence: true
    validates :age, numericality: { greater_than: 10 }

    def self.living_heroes(user)
        self.all.select { |hero| hero.user == user && hero.alive }
    end

    def self.dead_heroes(user)
        self.all.select { |hero| hero.user == user && !hero.alive }
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

    def self.best_hero_wins(heroes)
        if heroes.count > 0
            heroes.max_by { |hero| hero.monsters.count }.monsters.count
        else
            -1
        end
    end
end
