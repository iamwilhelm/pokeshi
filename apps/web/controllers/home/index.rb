module Web::Controllers::Home
  class Index
    include Web::Action
    expose :sushi

    def call(params)
      @sushi = {
        cover_image_url: "hamachi.png",
        name: {
          japanese: "Hamachi",
          english: "Japanese Amberjack",
          kanji: "鰤",
          scientific: "Seriola quinqueradiata",
          alternates: [
            ["buri", "Mature Hamachi"],
            ["tsubasa", "Name for Hamachi fry ~4 in and 6 months in Osaka"],
            ["inada", "Name for Young Hamachi ~1 ft and 1 year in Tokyo"],
          ],
        },
        category: "Shiromi",
        peak: {
          season: "Winter",
          months: [11, 12, 1, 2, 3],
        },
        acquisition_methods: ["farmed", "wild"],

        introduction: "The English terms for Hamachi and Kanpachi are “yellowtail” and “amberjack”, respectively, but because yellowtail can also be called “Japanese amberjack”, overseas sushi diners sometimes think they’re the same fish.",

        tane: {
          description: "Hamachi is the fattest of all the Shiromi-dane. With the farmed Hamachi, they are given special feed so that their fat level can go up to as high as 30%. The taste is succulent, rich and buttery and many people liken it to a nice fatty piece of Otoro (Tuna belly). The texture is perceptively softer then the learner Kanpachi and it typically ends on a fishier note compared to Kanpachi. If you compare Hamachi and Kanpachi side by side, you can see that the Hamachi is less translucent. They both will have the bit of red muscle (chiai) which is left on to make it more attractive.",
          images: [],
        },

        preparation: {
          description: "Hamachi is best eaten when the fish is about 1 or 2 years old. Any older, it isn't as fatty anymore. To prepare, slice into sushi pieces.",
          videos: [
            { source: "Catalina Ops", url: "https://www.youtube.com/watch?v=Yf3hrp3dmIo", },
            { source: "Chef Jay Huang", url: "https://www.youtube.com/watch?v=oPsPqAS4nXw", },
          ],
        },

        fish: {
          image_url: "seriola_quinqueradiata.jpg",
          description: "A species of jack fish in the family Carangidae. It is native to the northwest Pacific Ocean, from Japan to Hawaii.",
          body_length: { min: nil, max: 150.0, units: "cm" },
          body_mass: { min: nil, max: 40.0, units: "kg" }
        },

        references: [
          ["EOL", "http://eol.org/pages/206801/overview"],
          ["Chris Loew", "http://www.maff.go.jp/e/foj/chris/vol_03.html"],
          ["ieatishootipost", "http://ieatishootipost.sg/sushi-files-shiromi-dane-hamachi-kanpachi-and-shima-aji/"],
        ],
      }
    end

  end
end
