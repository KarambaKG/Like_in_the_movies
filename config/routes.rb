Rails.application.routes.draw do
  root 'mains#index'

  get '/commands', to: 'mains#commands', as: 'commands'
  get '/movies', to: 'mains#movies', as: 'movies'
  get '/participants', to: 'mains#participants', as: 'participants'
  get '/contacts', to: 'mains#contacts', as: 'contacts'
end

