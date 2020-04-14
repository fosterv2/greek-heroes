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

God.create(name: "Zeus", affinity: "Lightning",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddtzwmv-02a51cf7-80b8-494b-b8f1-f7609aeddb58.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUzNjUzMzE3LWQ1NDEtNDhhMC04MjUyLWJjNTMzYzk4MGUwMFwvZGR0endtdi0wMmE1MWNmNy04MGI4LTQ5NGItYjhmMS1mNzYwOWFlZGRiNTgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Nn1NLK8Mr5xYJRJFj-vYAfGaos3v43fIUynJHe-OWgA")
God.create(name: "Hera", affinity: "Marriage",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddkir19-fccf5e3d-cba1-4f61-90d8-6e0cf8c771e8.png/v1/fill/w_600,h_826,strp/hera___greek_mythology_by_yliade_ddkir19-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODI2IiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kZGtpcjE5LWZjY2Y1ZTNkLWNiYTEtNGY2MS05MGQ4LTZlMGNmOGM3NzFlOC5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.qO0N_JPnClUkwvGI0FXo_AE7ZoU1XNiUhRLOv5uRDuo")
God.create(name: "Athena", affinity: "Wisdom",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/dcsgnr8-3485da9b-93b3-49b0-8c2f-e9cdf4a74ed7.png/v1/fill/w_400,h_717,strp/athena___greek_mythology_by_yliade_dcsgnr8-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzE3IiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kY3NnbnI4LTM0ODVkYTliLTkzYjMtNDliMC04YzJmLWU5Y2RmNGE3NGVkNy5wbmciLCJ3aWR0aCI6Ijw9NDAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.AP0FwDETb7dTPo-Ma20LiniYxVY2wa4GGbES4_mlGs4")
God.create(name: "Ares", affinity: "War",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddpo13k-0fed07dd-4c5f-4b33-b978-93989c9c4168.png/v1/fill/w_600,h_915,strp/ares___greek_mythology_by_yliade_ddpo13k-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTE1IiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kZHBvMTNrLTBmZWQwN2RkLTRjNWYtNGIzMy1iOTc4LTkzOTg5YzljNDE2OC5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.KMzREXZDrGxjzOZ9WKjBLxnZLEkjp-9MbRFRrR0APF8")
God.create(name: "Aphrodite", affinity: "Love",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddp53x4-bacaec45-9e44-42c5-a34a-e6859e0fae88.png/v1/fill/w_600,h_814,strp/aphrodite___greek_mythology_by_yliade_ddp53x4-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODE0IiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kZHA1M3g0LWJhY2FlYzQ1LTllNDQtNDJjNS1hMzRhLWU2ODU5ZTBmYWU4OC5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.FdhUGgg63qHmeFQsfGBcXYOmLhq-eq0YHIZiVISU9mw")
God.create(name: "Hephaestus", affinity: "Fire",
                img_url: "")
God.create(name: "Poseidon", affinity: "Water",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddg9gc0-7914faee-f928-48b4-b5dc-1c7385e5ef68.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUzNjUzMzE3LWQ1NDEtNDhhMC04MjUyLWJjNTMzYzk4MGUwMFwvZGRnOWdjMC03OTE0ZmFlZS1mOTI4LTQ4YjQtYjVkYy0xYzczODVlNWVmNjgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.SE4ZnLC0mK40I-IgUOCDxEsFR7MPbWldX2BRqPb8BIA")
God.create(name: "Hades", affinity: "Death",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddlgnxg-d0fa1fbd-cbf7-4cf2-86d7-f4b4fddd50dd.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUzNjUzMzE3LWQ1NDEtNDhhMC04MjUyLWJjNTMzYzk4MGUwMFwvZGRsZ254Zy1kMGZhMWZiZC1jYmY3LTRjZjItODZkNy1mNGI0ZmRkZDUwZGQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dqyrNFTFoTnUThvDPUqd0IZeMHU53xlHZ98Fov7Pweo")
God.create(name: "Apollo", affinity: "Sun",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddiogt6-afa78220-0db7-40f5-a2e2-8c161c527751.png/v1/fill/w_600,h_981,strp/hermes___greek_mythology_by_yliade_ddiogt6-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTgxIiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kZGlvZ3Q2LWFmYTc4MjIwLTBkYjctNDBmNS1hMmUyLThjMTYxYzUyNzc1MS5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.HfK9ZR7GuI1FE20z03RW5j3SdyaZ2dI1BgWOeXfSeDg")
God.create(name: "Artemis", affinity: "Moon",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddgpdm8-dd45539e-7fd7-4e8d-8102-a34e3ebc2bdc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUzNjUzMzE3LWQ1NDEtNDhhMC04MjUyLWJjNTMzYzk4MGUwMFwvZGRncGRtOC1kZDQ1NTM5ZS03ZmQ3LTRlOGQtODEwMi1hMzRlM2ViYzJiZGMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ekmK29N9zU19iHnYiZVRq2Q2W0IIr2NmrHV0WrS0SD4")
God.create(name: "Hermes", affinity: "Travel",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddk20gg-5d876f13-a2e3-4a64-a589-45e1cee6ee40.png/v1/fill/w_600,h_835,strp/apollo___greek_mythology_by_yliade_ddk20gg-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODM1IiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kZGsyMGdnLTVkODc2ZjEzLWEyZTMtNGE2NC1hNTg5LTQ1ZTFjZWU2ZWU0MC5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.w7H8rvkW-cJ9HZGG1HDznDTmW6NfYPpb6thi-V2Iu9U")
God.create(name: "Demeter", affinity: "Earth",
                img_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53653317-d541-48a0-8252-bc533c980e00/ddsykgn-712f66bf-8dd3-4903-bd1d-eecce350f66b.png/v1/fill/w_600,h_816,strp/demeter___greek_mythology_by_yliade_ddsykgn-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODE2IiwicGF0aCI6IlwvZlwvNTM2NTMzMTctZDU0MS00OGEwLTgyNTItYmM1MzNjOTgwZTAwXC9kZHN5a2duLTcxMmY2NmJmLThkZDMtNDkwMy1iZDFkLWVlY2NlMzUwZjY2Yi5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.vhf105lzwoTLQleZ641hcf4pHTUbvUAO-I0WBkWNrjs")

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
