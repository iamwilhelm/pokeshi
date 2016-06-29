module Web::Controllers::Home
  class Index
    include Web::Action
    expose :cover_image

    def call(params)
      @cover_image = "aji.png"
    end

  end
end
