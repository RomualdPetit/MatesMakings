# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Event.destroy_all
Game.destroy_all

Game.create(
        name: "GTA 5",
        category: "Jeux de voitures sympas",
        img_url: "https://s1.1zoom.me/b5050/317/GTA_5_san_andreas_Carl_438113_1920x1080.jpg"
    )

    Game.create(
        name: "Rocket League",
        category: "Jeu mécanique qui demande beaucoup d'heures afin de métriser ne serait ce que les bases.",
        img_url: "https://rocketleague.media.zestyio.com/rl_gen_blog_1920x1080.309bf22bd29c2e411e9dd8eb07575bb1.jpg"
    )

    Game.create(
        name: "Fortnite",
        category: "Battle royal",
        img_url: "https://cdn2.unrealengine.com/fortnite-battle-royale-1920x1080-864336699.jpg"
    )

    Game.create(
        name: "Alexandra Ledermann 8 : Les Secrets du Haras",
        category: "Simulation équtation",
        img_url: "https://i.ytimg.com/vi/ngeO7he4XHg/maxresdefault.jpg"
    )

    Game.create(
        name: "Apex Legends",
        category: "battle royale",
        img_url: "https://image.jeuxvideo.com/medias/155137/1551371304-2322-jaquette-avant.jpg"
    )

    Game.create(
        name: "Call of Duty: Vanguard",
        category: "C'est un Call of",
        img_url: "https://www.journaldugeek.com/content/uploads/2021/08/template-jdg-69.jpg"
    )

    Game.create(
        name: "Battlefield 2042",
        category: "battlefield",
        img_url: "https://www.presse-citron.net/app/uploads/2021/06/battlefiled-2042.jpg"
    )


    Game.create(
        name: "FIFA13",
        category: "Allez le foot",
        img_url: "https://images.alphacoders.com/269/thumb-1920-269733.jpg"
    )

