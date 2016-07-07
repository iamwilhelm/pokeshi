get '/sushi/:id', to: 'sushi#show'
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage

get '/', to: 'home#index'

resources 'sushi', only: [:show]
