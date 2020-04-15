class Hero < ApplicationRecord
    belongs_to :user
    belongs_to :god
    has_many :battles
    has_many :monsters, through: :battles

    def self.generate_hero(user_id)
        god = God.all.sample
        self.create(
            name: Faker::Ancient.hero,
            age: rand(16..30),
            affinity: god.affinity,
            god: god,
            user_id: user_id
        )
    end
end
