ActiveAdmin.register User do

  permit_params :name, :surname, :description, :phone, :social_network, :email, :password,
                :password_confirmation, role: [:id, :name, ]

  index do
    selectable_column
    id_column
    column :name
    column :surname
    column :description
    column :phone
    column :social_network
    column :email
    column :role
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
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
      f.input :role_id, :label => 'Профессия', :as => :select,
              :collection => Role.all.map{|role| ["#{role.name}", role.id]}
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end