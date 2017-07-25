ActiveAdmin.register User do

  permit_params :email, :password, :password_confirmation, :role_id

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :role_id
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end


  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role_id, :label => 'Профессия', :as => :select,
              :collection => Role.all.map{|role| ["#{role.name}", role.id]}
    end
    f.actions
  end

end
