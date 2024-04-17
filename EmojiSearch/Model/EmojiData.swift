//
//  EmojiData.swift
//  EmojiSearch
//
//  Created by MACBOOK PRO on 17/04/24.
//

import Foundation
struct EmojiData : Identifiable{
    let id = UUID()
    let emoji: String
    let name: String
    let desc: String
}

//Mark: - DUMMY DATA
// untuk menampilkan data bukan hanya preview tetapi juga secara langsung
    struct EmojiProvider {
        static func allEmojis() -> [EmojiData] {
            let Emojis = [
                EmojiData(
                    emoji: "👾",
                    name: "Alien Monster",
                    desc: "A friendly-looking, tentacled space creature with two eyes."),
                EmojiData(
                    emoji: "🎨",
                    name: "Artist Palette",
                    desc: "A palette used by an artist when painting, to store and mix paint colors."),
                EmojiData(
                    emoji: "🥑",
                    name: "Avocado",
                    desc: "A pear-shaped avocado, sliced in half to show its yellow-green flesh and "
                    + "large brown pit."),
                EmojiData(
                    emoji: "🐿️",
                    name: "Chipmunk",
                    desc: "A chipmunk, a small rodent with puffy cheeks."),
                EmojiData(
                    emoji: "🤯",
                    name: "Exploding Head",
                    desc: "A yellow face with an open mouth, the top of its head exploding in the shape "
                    + "of a brain-like mushroom cloud."),
                EmojiData(
                    emoji: "🦊",
                    name: "Fox",
                    desc: "A friendly, cartoon-styled faced of a fox, the cunning canine, looking "
                    + "straight ahead."),
                EmojiData(
                    emoji: "😀",
                    name: "Grinning Face",
                    desc: "A yellow face with simple, open eyes and a broad, open smile, showing upper "
                    + "teeth and tongue on some platforms."),
                EmojiData(
                    emoji: "🍟",
                    name: "French Fries",
                    desc: "Thin-cut, golden-brown French fries, served in a red carton, as at "
                    + "McDonald’s."),
                EmojiData(
                    emoji: "🐣",
                    name: "Hatching Chick",
                    desc: "A baby chicken (chick), hatching from an egg and seeing the world for the "
                    + "first time."),
                EmojiData(
                    emoji: "🌭",
                    name: "Hot Dog",
                    desc: "The cooked sausage of a hot dog in a sliced bun and drizzled with yellow "
                    + "mustard, as eaten at a baseball game."),
                EmojiData(emoji: "🪁", name: "Kite", desc: "A diamond-shaped kite with a tail."),
                EmojiData(
                    emoji: "🔍",
                    name: "Magnifying Glass Tilted Left",
                    desc: "A classic magnifying glass, as used to view small objects, with its lens "
                    + "pointed left."),
                EmojiData(
                    emoji: "🏓",
                    name: "Ping Pong",
                    desc: "A paddle and ping pong ball used in the sport of table tennis."),
                EmojiData(
                    emoji: "🍕",
                    name: "Pizza",
                    desc: "A slice of pepperoni pizza, topped with black olives on Google. WhatsApp "
                    + "adds green pepper, Samsung white onion."),
                EmojiData(
                    emoji: "🧩",
                    name: "Puzzle Piece",
                    desc: "Puzzle Piece was approved as part of Unicode 11.0 in 2018 under the name "
                    + "“Jigsaw Puzzle Piece” and added to Emoji 11.0 in 2018."),
                EmojiData(
                    emoji: "🚀",
                    name: "Rocket",
                    desc: "A rocket being propelled into space."),
                EmojiData(
                    emoji: "📌",
                    name: "Round Pushpin",
                    desc: "A thumbtack (drawing pin), as used to pin documents on a bulletin (notice) "
                    + "board. Depicted at a 45° angle with its red, flat head to the upper right."),
                EmojiData(
                    emoji: "⛩️",
                    name: "Shinto Shrine",
                    desc: "A shrine used for the Japanese Shinto religion. This emoji generally " +
                    "displays the torii, which is the gate to the Shinto Shrine."),
                EmojiData(
                    emoji: "🥰",
                    name: "Smiling Face with Hearts",
                    desc: "A yellow face with smiling eyes, a closed smile, rosy cheeks, and several "
                    + "hearts floating around its head."),
                EmojiData(
                    emoji: "😈",
                    name: "Smiling Face with Horns",
                    desc: "A face, usually purple, with devil horns, a wide grin, and eyes and eyebrows "
                    + "scrunched downward on most platforms."),
                EmojiData(
                    emoji: "🤩",
                    name: "Star-Struck",
                    desc: "A yellow face with a broad, open smile, showing upper teeth on most "
                    + "platforms, with stars for eyes, as if seeing a beloved celebrity."),
                EmojiData(
                    emoji: "🗽",
                    name: "Statue of Liberty",
                    desc: "The Statue of Liberty, often used as a depiction of New York City."),
                EmojiData(
                    emoji: "🌻",
                    name: "Sunflower",
                    desc: "A sunflower, a tall, round flower with large yellow petals. Depicted as a "
                    + "single, vertical sunflower with a large, dark-brown center on a green stem."),
                EmojiData(
                    emoji: "🧸",
                    name: "Teddy Bear",
                    desc: "A classic teddy bear, as snuggled by a child when going to sleep."),
                EmojiData(
                    emoji: "🎾",
                    name: "Tennis",
                    desc: "A tennis racket (racquet) with a tennis ball. Only a ball is shown on Apple, "
                    + "LG, Twitter, Facebook, and Mozilla platforms."),
                EmojiData(
                    emoji: "🗼",
                    name: "Tokyo Tower",
                    desc: "The Tokyo Tower is the second-tallest building in Japan, located in Minato, "
                    + "Tokyo."),
                EmojiData(
                    emoji: "🦄",
                    name: "Unicorn",
                    desc: "The face of a unicorn, a mythical creature in the form of a white horse with "
                    + "a single, long horn on its forehead."),
                EmojiData(
                    emoji: "🍉",
                    name: "Watermelon",
                    desc: "A slice of watermelon, showing its rich pink flesh, black seeds, and green "
                    + "rind."),
                EmojiData(
                    emoji: "🚴🏽‍♀️",
                    name: "Woman Biking",
                    desc: "The female version of the 🚴 Bicyclist emoji."),
                EmojiData(
                    emoji: "👩🏽‍💻",
                    name: "Woman Technologist",
                    desc: "A woman behind a computer screen, working in the field of technology."),
                EmojiData(
                    emoji: "🗺",
                    name: "World Map",
                    desc: "A rectangular map of the world. Generally depicted as a paper map creased at "
                    + "its folds, Earth’s surface shown in green on blue ocean."),
            ]
            
            return Emojis
        }
    }
    


