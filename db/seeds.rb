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
        img_url: "https://image.jeuxvideo.com/medias-sm/163129/1631287693-8700-jaquette-avant.jpg"
    )

    Game.create(
        name: "Rocket League",
        category: "Jeux de voitures ou de foot, on sait pas trop",
        img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfOixbTaj1yAqjpFm3ohPHI0qQECzZ-N56aw&usqp=CAU"
    )

    Game.create(
        name: "Fortnite",
        category: "Battle royal",
        img_url: "https://img.lemde.fr/2018/04/06/0/0/1280/720/1920/0/75/0/9002ece_26251-xfz7z4.8lm3.jpg"
    )

    Game.create(
        name: "Alexandra Ledermann 8 : Les Secrets du Haras",
        category: "Simulation équtation",
        img_url: "https://image.jeuxvideo.com/images-sm/pc/a/l/als8pc0f.jpg"
    )

    Game.create(
        name: "Apex Legends",
        category: "batlle royale",
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
        img_url: "https://i.jeuxactus.com/datas/jeux/f/i/fifa-13/xl/fifa-13-jaquette-500d75b65f2f7.jpg"
    )

