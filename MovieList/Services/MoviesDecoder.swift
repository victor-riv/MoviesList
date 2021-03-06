//
//  MoviesDecoder.swift
//  MovieList
//
//  Created by Victor Rivera on 12/27/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import Foundation

let moviesJSON = """
[
  {
    "popularity": 472.09,
    "vote_count": 1489,
    "video": false,
    "poster_path": "/xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg",
    "id": 419704,
    "adult": false,
    "backdrop_path": "/p3TCqUDoVsrIm8fHK9KOTfWnDjZ.jpg",
    "original_language": "en",
    "original_title": "Ad Astra",
    "genre_ids": [
      12,
      18,
      9648,
      878,
      53
    ],
    "title": "Ad Astra",
    "vote_average": 6,
    "overview": "The near future, a time when both hope and hardships drive humanity to look to the stars and beyond. While a mysterious phenomenon menaces to destroy life on planet Earth, astronaut Roy McBride undertakes a mission across the immensity of space and its many perils to uncover the truth about a lost expedition that decades before boldly faced emptiness and silence in search of the unknown.",
    "release_date": "2019-09-17"
  },
  {
    "popularity": 454.192,
    "vote_count": 1229,
    "video": false,
    "poster_path": "/db32LaOibwEliAmSL2jjDF6oDdj.jpg",
    "id": 181812,
    "adult": false,
    "backdrop_path": "/dCB7d4l0mfpsISZvr6aPE2z5QF6.jpg",
    "original_language": "en",
    "original_title": "Star Wars: The Rise of Skywalker",
    "genre_ids": [
      28,
      12,
      878
    ],
    "title": "Star Wars: The Rise of Skywalker",
    "vote_average": 6.7,
    "overview": "The surviving Resistance faces the First Order once again as the journey of Rey, Finn and Poe Dameron continues. With the power and knowledge of generations behind them, the final battle begins.",
    "release_date": "2019-12-18"
  },
  {
    "popularity": 341.325,
    "vote_count": 56,
    "video": false,
    "poster_path": "/2MwpeDrI7RbgD6bipT31kpMZe9u.jpg",
    "id": 449924,
    "adult": false,
    "backdrop_path": "/ekP6EVxL81lZ4ivcqPsoZ72rY0h.jpg",
    "original_language": "cn",
    "original_title": "葉問4",
    "genre_ids": [
      28,
      18,
      36
    ],
    "title": "Ip Man 4: The Finale",
    "vote_average": 6.1,
    "overview": "Ip Man 4 is an upcoming Hong Kong biographical martial arts film directed by Wilson Yip and produced by Raymond Wong. It is the fourth in the Ip Man film series based on the life of the Wing Chun grandmaster of the same name and features Donnie Yen reprising the role. The film began production in April 2018 and ended in July the same year.",
    "release_date": "2019-12-20"
  },
  {
    "popularity": 280.669,
    "vote_count": 551,
    "video": false,
    "poster_path": "/jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg",
    "id": 512200,
    "adult": false,
    "backdrop_path": "/zTxHf9iIOCqRbxvl8W5QYKrsMLq.jpg",
    "original_language": "en",
    "original_title": "Jumanji: The Next Level",
    "genre_ids": [
      28,
      12,
      35,
      14
    ],
    "title": "Jumanji: The Next Level",
    "vote_average": 6.7,
    "overview": "As the gang return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored in order to escape the world’s most dangerous game.",
    "release_date": "2019-12-04"
  },
  {
    "popularity": 186.238,
    "vote_count": 1277,
    "video": false,
    "poster_path": "/pjeMs3yqRmFL3giJy4PMXWZTTPa.jpg",
    "id": 330457,
    "adult": false,
    "backdrop_path": "/xJWPZIYOEFIjZpBL7SVBGnzRYXp.jpg",
    "original_language": "en",
    "original_title": "Frozen II",
    "genre_ids": [
      12,
      16,
      10402,
      10751
    ],
    "title": "Frozen II",
    "vote_average": 7,
    "overview": "Elsa, Anna, Kristoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom.",
    "release_date": "2019-11-20"
  },
  {
    "popularity": 176.532,
    "vote_count": 705,
    "video": false,
    "poster_path": "/dtRbVsUb5O12WWO54SRpiMtHKC0.jpg",
    "id": 338967,
    "adult": false,
    "backdrop_path": "/3ghImmHdp4RnC3UkL6hpLayclnb.jpg",
    "original_language": "en",
    "original_title": "Zombieland: Double Tap",
    "genre_ids": [
      28,
      35,
      27
    ],
    "title": "Zombieland: Double Tap",
    "vote_average": 7.1,
    "overview": "Columbus, Tallahassee, Wichita, and Little Rock move to the American heartland as they face off against evolved zombies, fellow survivors, and the growing pains of the snarky makeshift family.",
    "release_date": "2019-10-09"
  },
  {
    "popularity": 144.631,
    "vote_count": 765,
    "video": false,
    "poster_path": "/lnWkyG3LLgbbrIEeyl5mK5VRFe4.jpg",
    "id": 509967,
    "adult": false,
    "backdrop_path": "/eFw5YSorHidsajLTayo1noueIxI.jpg",
    "original_language": "en",
    "original_title": "6 Underground",
    "genre_ids": [
      28,
      35,
      53
    ],
    "title": "6 Underground",
    "vote_average": 6.3,
    "overview": "After faking his death, a tech billionaire recruits a team of international operatives for a bold and bloody mission to take down a brutal dictator.",
    "release_date": "2019-12-13"
  },
  {
    "popularity": 109.797,
    "vote_count": 65,
    "video": false,
    "poster_path": "/MBiKqTsouYqAACLYNDadsjhhC0.jpg",
    "id": 486589,
    "adult": false,
    "backdrop_path": "/bga3i5jcejBekr2FCGJga1fYCh.jpg",
    "original_language": "en",
    "original_title": "Red Shoes and the Seven Dwarfs",
    "genre_ids": [
      16,
      10749
    ],
    "title": "Red Shoes and the Seven Dwarfs",
    "vote_average": 6.3,
    "overview": "Princes who have been turned into Dwarfs seek the red shoes of a lady in order to break the spell, although it will not be easy.",
    "release_date": "2019-07-25"
  },
  {
    "popularity": 114.25,
    "vote_count": 880,
    "video": false,
    "poster_path": "/pThyQovXQrw2m0s9x82twj48Jq4.jpg",
    "id": 546554,
    "adult": false,
    "backdrop_path": "/AbRYlvwAKHs0YuyNO6NX9ofq4l6.jpg",
    "original_language": "en",
    "original_title": "Knives Out",
    "genre_ids": [
      35,
      9648,
      53
    ],
    "title": "Knives Out",
    "vote_average": 7.9,
    "overview": "When renowned crime novelist Harlan Thrombey is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc is mysteriously enlisted to investigate. From Harlan's dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan's untimely death.",
    "release_date": "2019-11-27"
  },
  {
    "popularity": 99.993,
    "vote_count": 19,
    "video": false,
    "poster_path": "/30YacPAcxpNemhhwX0PVUl9pVA3.jpg",
    "id": 431693,
    "adult": false,
    "backdrop_path": "/nZ1N5tDpoNm8UJBmWGoTZCRiDoQ.jpg",
    "original_language": "en",
    "original_title": "Spies in Disguise",
    "genre_ids": [
      28,
      12,
      16,
      35
    ],
    "title": "Spies in Disguise",
    "vote_average": 8.2,
    "overview": "When the world's best spy is turned into a pigeon, he must rely on his nerdy tech officer to save the world.",
    "release_date": "2019-12-24"
  },
  {
    "popularity": 89.915,
    "vote_count": 98,
    "video": false,
    "poster_path": "/84Xz2Jh60tC3ICO1CY27wc0zwgC.jpg",
    "id": 461130,
    "adult": false,
    "backdrop_path": "/raspMdRYIj0cCF6SQH8NQ1lLLMB.jpg",
    "original_language": "en",
    "original_title": "Code 8",
    "genre_ids": [
      28,
      80,
      18,
      878,
      53
    ],
    "title": "Code 8",
    "vote_average": 6.3,
    "overview": "In Lincoln City, some inhabitants have extraordinary abilities. Most live below the poverty line, under the close surveillance of a heavily militarized police force. Connor, a construction worker with powers, involves with a criminal gang to help his ailing mother. (Based on the short film “Code 8,” 2016.)",
    "release_date": "2019-12-06"
  },
  {
    "popularity": 94.276,
    "vote_count": 881,
    "video": false,
    "poster_path": "/kTQ3J8oTTKofAVLYnds2cHUz9KO.jpg",
    "id": 522938,
    "adult": false,
    "backdrop_path": "/spYx9XQFODuqEVoPpvaJI1ksAVt.jpg",
    "original_language": "en",
    "original_title": "Rambo: Last Blood",
    "genre_ids": [
      28,
      18,
      53
    ],
    "title": "Rambo: Last Blood",
    "vote_average": 5.9,
    "overview": "After fighting his demons for decades, John Rambo now lives in peace on his family ranch in Arizona, but his rest is interrupted when Gabriela, the granddaughter of his housekeeper María, disappears after crossing the border into Mexico to meet her biological father. Rambo, who has become a true father figure for Gabriela over the years, undertakes a desperate and dangerous journey to find her.",
    "release_date": "2019-09-19"
  },
  {
    "popularity": 83.364,
    "vote_count": 1939,
    "video": false,
    "poster_path": "/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
    "id": 496243,
    "adult": false,
    "backdrop_path": "/TU9NIjwzjoKPwQHoHshkFcQUCG.jpg",
    "original_language": "ko",
    "original_title": "기생충",
    "genre_ids": [
      35,
      53
    ],
    "title": "Parasite",
    "vote_average": 8.6,
    "overview": "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.",
    "release_date": "2019-05-30"
  },
  {
    "popularity": 82.5,
    "vote_count": 49,
    "video": false,
    "poster_path": "/9zvjgr1v8pwFYQNHZTtnKNQUWmw.jpg",
    "id": 536869,
    "adult": false,
    "backdrop_path": "/kKGYGXu1lOVxY8XejQ3lAyV5QXZ.jpg",
    "original_language": "en",
    "original_title": "Cats",
    "genre_ids": [
      35,
      18,
      14,
      10402
    ],
    "title": "Cats",
    "vote_average": 5,
    "overview": "A tribe of cats called the Jellicles must decide yearly which one will ascend to the Heaviside Layer and come back to a new Jellicle life.",
    "release_date": "2019-12-19"
  },
  {
    "popularity": 76.038,
    "vote_count": 869,
    "video": false,
    "poster_path": "/fapXd3v9qTcNBTm39ZC4KUVQDNf.jpg",
    "id": 423204,
    "adult": false,
    "backdrop_path": "/k2WyDw2NTUIWnuEs5gT7wgrCQg6.jpg",
    "original_language": "en",
    "original_title": "Angel Has Fallen",
    "genre_ids": [
      28,
      53
    ],
    "title": "Angel Has Fallen",
    "vote_average": 5.9,
    "overview": "After a treacherous attack, Secret Service agent Mike Banning is charged with attempting to assassinate President Trumbull. Chased by his own colleagues and the FBI, Banning begins a race against the clock to clear his name.",
    "release_date": "2019-08-21"
  },
  {
    "popularity": 75.166,
    "vote_count": 1630,
    "video": false,
    "poster_path": "/mbm8k3GFhXS0ROd9AD1gqYbIFbM.jpg",
    "id": 398978,
    "adult": false,
    "backdrop_path": "/ww5aGS5H2tUtckxFFNOJE2790S7.jpg",
    "original_language": "en",
    "original_title": "The Irishman",
    "genre_ids": [
      80,
      18,
      36
    ],
    "title": "The Irishman",
    "vote_average": 7.9,
    "overview": "Pennsylvania, 1956. Frank Sheeran, a war veteran of Irish origin who works as a truck driver, accidentally meets mobster Russell Bufalino. Once Frank becomes his trusted man, Bufalino sends him to Chicago with the task of helping Jimmy Hoffa, a powerful union leader related to organized crime, with whom Frank will maintain a close friendship for nearly twenty years.",
    "release_date": "2019-11-01"
  },
  {
    "popularity": 70.037,
    "vote_count": 1026,
    "video": false,
    "poster_path": "/pZekG6xabTmZxjmYw10wN84Hp8d.jpg",
    "id": 492188,
    "adult": false,
    "backdrop_path": "/nwoDC0IJA47wr3znJgT1kkk64Gy.jpg",
    "original_language": "en",
    "original_title": "Marriage Story",
    "genre_ids": [
      18
    ],
    "title": "Marriage Story",
    "vote_average": 8,
    "overview": "A stage director and an actress struggle through a grueling, coast-to-coast divorce that pushes them to their personal extremes.",
    "release_date": "2019-11-06"
  },
  {
    "popularity": 64.81,
    "vote_count": 201,
    "video": false,
    "poster_path": "/3nk9UoepYmv1G9oP18q6JJCeYwN.jpg",
    "id": 503919,
    "adult": false,
    "backdrop_path": "/i51wnN9phojyn14xHjQt6rv1r0x.jpg",
    "original_language": "en",
    "original_title": "The Lighthouse",
    "genre_ids": [
      18,
      14,
      27
    ],
    "title": "The Lighthouse",
    "vote_average": 8.1,
    "overview": "Two lighthouse keepers try to maintain their sanity while living on a remote and mysterious New England island in the 1890s.",
    "release_date": "2019-10-18"
  },
  {
    "popularity": 71.997,
    "vote_count": 68,
    "video": false,
    "poster_path": "/kZHnblqmTBUBgzYBIxWIz9txsEi.jpg",
    "id": 514921,
    "adult": false,
    "backdrop_path": "/yBxq43FaskaXDGKWNJQmM75WoGS.jpg",
    "original_language": "en",
    "original_title": "The Aeronauts",
    "genre_ids": [
      12,
      18,
      10749
    ],
    "title": "The Aeronauts",
    "vote_average": 6.7,
    "overview": "In 1862, daredevil balloon pilot Amelia Wren teams up with pioneering meteorologist James Glaisher  to advance human knowledge of the weather and fly higher than anyone in history. While breaking records and advancing scientific discovery, their voyage to the very edge of existence helps the unlikely pair find their place in the world they have left far below them. But they face physical and emotional challenges in the thin air, as the ascent becomes a fight for survival.",
    "release_date": "2019-11-04"
  }
]
""".data(using: .utf8)!

let moviesDecoder = JSONDecoder()
let dateFormatter = DateFormatter()



