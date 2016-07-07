module Web::Controllers::Home
  class Index
    include Web::Action
    expose :sushi, :trophies

    def call(params)
    end

  end
end
