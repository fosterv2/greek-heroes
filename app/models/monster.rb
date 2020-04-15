class Monster < ApplicationRecord
    has_many :battles
    has_many :heros, through: :battles

    def self.all_living
        self.all.select { |monster| monster.alive }
    end

    def self.refresh
        5.times do
            Monster.create(
                name: Faker::Games::Witcher.monster,
                animal_trait: Faker::Creature::Animal.name,
                alive: true
            )
        end
    end
end
