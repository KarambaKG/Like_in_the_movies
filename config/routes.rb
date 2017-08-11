Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, :controllers => { registrations: 'registrations', confirmations: 'confirmations' }

  root 'mains#index'

  get '/commands', to: 'mains#commands', as: 'commands'
  get '/about_command/:id', to: 'mains#about_command', as: 'about_command'
  get '/about_user/:id', to: 'mains#about_user', as: 'about_user'
  get '/movies', to: 'mains#movies', as: 'movies'
  get '/participants', to: 'mains#participants', as: 'participants'
  get '/contacts', to: 'mains#contacts', as: 'contacts'
  get '/help_project', to: 'mains#help_project', as: 'help_project'

end