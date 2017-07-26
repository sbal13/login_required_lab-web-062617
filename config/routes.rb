Rails.application.routes.draw do
  get '/', to: 'sessions#new', as: 'login_page'
  post '/', to: 'sessions#create', as: 'login'
  delete '/', to: 'sessions#destroy', as: 'logout'

  get '/secret', to: 'secrets#show', as: 'show_secret'

end
