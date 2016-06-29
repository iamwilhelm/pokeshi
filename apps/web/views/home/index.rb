module Web::Views::Home
  class Index
    include Web::View

    def header_stylesheet
      html.style do
        raw %(
            .jumbotron {
              background-image: url('#{asset_path cover_image}');
              background-size: cover;
              background-position: center center;
              height: 32em;
            }
        )
      end
    end

  end
end
