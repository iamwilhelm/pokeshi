module Web::Controllers::Sushi
  class Show
    include Web::Action
    expose :sushi, :trophies

    def call(params)
      json = IO.read("apps/web/datafiles/#{params[:id]}.json")
      @sushi = HashWithIndifferentAccess.new(JSON.parse(json))

      @trophies = [
        HashWithIndifferentAccess.new(
          { source: "iamwil", caption: "Hamachi loins", url: "img_6198.jpg" },
        )
      ]
    end

  end
end
