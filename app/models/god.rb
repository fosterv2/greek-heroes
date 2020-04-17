class God < ApplicationRecord
    has_many :heros

    def children
        Hero.all.select { |hero| hero.god == self }
    end
end
