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


  # Роутинг поиска участников
  get '/in_commands', to: 'mains#in_commands', as: 'in_commands'
  get '/in_commands_operators', to: 'mains#in_commands_operators', as: 'in_commands_operators'
  get '/in_commands_producers', to: 'mains#in_commands_producers', as: 'in_commands_producers'
  get '/in_commands_sound_directors', to: 'mains#in_commands_sound_directors', as: 'in_commands_sound_directors'
  get '/in_commands_lighters', to: 'mains#in_commands_lighters', as: 'in_commands_lighters'
  get '/in_commands_editors', to: 'mains#in_commands_editors', as: 'in_commands_editors'
  get '/in_commands_actors', to: 'mains#in_commands_actors', as: 'in_commands_actors'
  get '/in_commands_pr_managers', to: 'mains#in_commands_pr_managers', as: 'in_commands_pr_managers'
  get '/in_commands_makeups', to: 'mains#in_commands_makeups', as: 'in_commands_makeups'
  get '/in_commands_composers', to: 'mains#in_commands_composers', as: 'in_commands_composers'
  get '/in_commands_writers', to: 'mains#in_commands_writers', as: 'in_commands_writers'
  get '/in_commands_photographers', to: 'mains#in_commands_photographers', as: 'in_commands_photographers'
  get '/in_commands_sponsors', to: 'mains#in_commands_sponsors', as: 'in_commands_sponsors'

  get '/no_commands', to: 'mains#no_commands', as: 'no_commands'
  get '/no_commands_operators', to: 'mains#no_commands_operators', as: 'no_commands_operators'
  get '/no_commands_producers', to: 'mains#no_commands_producers', as: 'no_commands_producers'
  get '/no_commands_sound_directors', to: 'mains#no_commands_sound_directors', as: 'no_commands_sound_directors'
  get '/no_commands_lighters', to: 'mains#no_commands_lighters', as: 'no_commands_lighters'
  get '/no_commands_editors', to: 'mains#no_commands_editors', as: 'no_commands_editors'
  get '/no_commands_actors', to: 'mains#no_commands_actors', as: 'no_commands_actors'
  get '/no_commands_pr_managers', to: 'mains#no_commands_pr_managers', as: 'no_commands_pr_managers'
  get '/no_commands_makeups', to: 'mains#no_commands_makeups', as: 'no_commands_makeups'
  get '/no_commands_composers', to: 'mains#no_commands_composers', as: 'no_commands_composers'
  get '/no_commands_writers', to: 'mains#no_commands_writers', as: 'no_commands_writers'
  get '/no_commands_photographers', to: 'mains#no_commands_photographers', as: 'no_commands_photographers'
  get '/no_commands_sponsors', to: 'mains#no_commands_sponsors', as: 'no_commands_sponsors'
end