# Создание ролей
%w(operator producer sound_director lighter editor actor pr_manager makeup composer screenwriter photographer
sponsor).each do |role|
  Role.find_or_create_by({name: role})
end

AdminUser.create!(email: 'karambavkino@gmail.com', password: 'likeinthemovies',
                  password_confirmation: 'likeinthemovies') if Rails.env.development?

Command.create(name: 'Petrushka', description: 'Мы веселые петрушки')
