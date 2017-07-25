# Создание ролей
%w(admin operator producer sound_director lighter editor actor pr_manager makeup composer screenwriter photographer
sponsor).each do |role|
  Role.find_or_create_by({name: role})
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?