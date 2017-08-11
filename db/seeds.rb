# Создание ролей
%w(оператор продюсер звукорежиссёр осветитель редактор актёр pr-менеджер гримёр композиток
 сценарист фотограф спонсор).each do |role|
  Role.find_or_create_by({name: role})
end

AdminUser.create!(email: 'karambavkino@gmail.com', password: 'likeinthemovies',
                  password_confirmation: 'likeinthemovies') if Rails.env.development?

Command.create(name: 'Petrushka', description: 'Мы веселые петрушки')
