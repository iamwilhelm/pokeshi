module Web::Controllers::Home
  class Index
    include Web::Action
    expose :sushi, :trophies

    def call(params)
      @sushi = HashWithIndifferentAccess.new(JSON.parse(IO.read('apps/web/datafiles/buri.json')))

      @trophies = [
        HashWithIndifferentAccess.new(
          { source: "iamwil", caption: "Hamachi loins", url: "img_6198.jpg" },
        )
      ]
    end

  end
end
