# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

God.destroy_all
Monster.destroy_all
User.destroy_all
Hero.destroy_all
Battle.destroy_all

God.create(name: "Zeus", affinity: "Lightning", img_url: "")
God.create(name: "Hera", affinity: "Marriage", img_url: "")
God.create(name: "Athena", affinity: "Wisdom", img_url: "")
God.create(name: "Ares", affinity: "War", img_url: "")
God.create(name: "Aphrodite", affinity: "Love", img_url: "")
God.create(name: "Hephaestus", affinity: "Fire", img_url: "")
God.create(name: "Poseidon", affinity: "Water", img_url: "")
God.create(name: "Hades", affinity: "Death", img_url: "")
God.create(name: "Apollo", affinity: "Sun", img_url: "")
God.create(name: "Artemis", affinity: "Moon", img_url: "")
God.create(name: "Hermes", affinity: "Travel", img_url: "")
God.create(name: "Demeter", affinity: "Earth", img_url: "")

boole = [true, false]
10.times do
    Monster.create(
        name: Faker::Games::Witcher.monster,
        animal_trait: Faker::Creature::Animal.name,
        alive: boole.sample
        )
end

5.times do
    name = Faker::Name.name
    User.create(
        full_name: name,
        username: Faker::Internet.username(specifier: name, separators: %w(. _ -))
        )
end

10.times do
    god = God.all.sample
    Hero.create(
        name: Faker::Ancient.hero,
        age: rand(16..30),
        affinity: god.affinity,
        god: god,
        user: User.all.sample
        )
end

7.times do
    Battle.create(
        location: Faker::Games::LeagueOfLegends.location,
        hero: Hero.all.sample,
        monster: Monster.all.sample
    )
end
