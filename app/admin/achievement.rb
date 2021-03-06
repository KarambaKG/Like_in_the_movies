ActiveAdmin.register Achievement do
  permit_params :name, :description, :avatar, user_ids: [], command_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :description
    column 'Avatar' do |achievement|
      image_tag achievement.avatar.url(:thumb)
    end
    column :created_at
    actions
  end

  show do |achievement|
    attributes_table do
      row :name
      row :description
      row :thumbnail do
        image_tag(achievement.avatar.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :avatar, hint: image_tag(achievement.avatar.url(:thumb))
      f.input :user_ids, :label => 'Участники для награды', as: :check_boxes,
              collection: User.all.map{|user| [user.name, user.id]}
      f.input :command_ids, :label => 'Команды для награды', as: :check_boxes,
              collection: Command.all.map{|command| [command.name, command.id]}
    end
    f.actions
  end
end