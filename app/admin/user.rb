ActiveAdmin.register User do

  permit_params :name, :surname, :description, :phone, :social_network, :email, :status, :password,
                :password_confirmation, :role_id, :command_id

  controller do
    def update_resource(object, attributes)
      update_method = attributes.first[:password].present? ? :update_attributes : :update_without_password
      object.send(update_method, *attributes)
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :surname
    column :description
    column :phone
    column :social_network
    column :email
    column :status
    column :role
    column :command
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :surname
      f.input :description
      f.input :phone
      f.input :social_network
      f.input :email
      f.input :status, as: :radio, :label => 'status', :collection => [ 'active', 'not_active' ]
      f.input :role_id, :label => 'Профессия', :as => :select,
              :collection => Role.all.map{|role| ["#{role.name}", role.id]}
      f.input :command_id, :label => 'Команда', :as => :select,
              :collection => Command.all.map{|command| ["#{command.name}", command.id]}
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end