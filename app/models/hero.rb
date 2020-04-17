class Hero < ApplicationRecord
    belongs_to :user
    belongs_to :god
    has_many :battles
    has_many :monsters, through: :battles

    validates :name, presence: true
    validates :age, numericality: { greater_than: 10 }

    def monsters_defeated
        if self.alive
            self.monsters
        else
            list = self.monsters.to_a
            list.pop
            list
        end
    end

    def self.living_heroes(user)
        living = self.all.select { |hero| hero.user == user && hero.alive }
        living.sort_by { |hero| hero.monsters_defeated.count }.reverse
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
