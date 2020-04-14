class Monster < ApplicationRecord
    has_many :battles
    has_many :heroes, through: :battles
end
