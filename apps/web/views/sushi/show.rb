module Web::Views::Sushi
  class Show
    include Web::View

    def header_stylesheet
      html.style do
        raw %(
            .jumbotron {
              background-image: url('#{asset_path sushi[:cover_image_url]}');
              background-size: cover;
              background-position: center center;
              height: 32em;
            }
        )
      end
    end
  end
end
