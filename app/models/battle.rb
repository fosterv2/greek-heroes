class Battle < ApplicationRecord
    belongs_to :hero
    belongs_to :monster

    def decide_winner
        num = [1, 1, 1, 2].sample
        if num == 1
            self.monster.update(alive: false)
        elsif num == 2
            self.hero.update(alive: false)
        end
        if Monster.all_living.count < 3
            Monster.refresh
        end
    end
end
