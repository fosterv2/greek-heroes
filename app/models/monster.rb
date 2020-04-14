class Monster < ApplicationRecord
    has_many :battles
    has_many :heros, through: :battles
end
