ActiveAdmin.register User, as: 'New_requests' do

  permit_params :name, :surname, :description, :phone, :social_network, :email, :status, :password,
                :password_confirmation, role: [:id, :name, ]
  controller do
    def scoped_collection
      User.where(status: 'not_active').where.not(confirmed_at: nil)
    end

    def update_resource(object, attributes)
      update_method = attributes.first[:password].present? ? :update_attributes : :update_without_password
      object.send(update_method, *attributes)
    end

    def update
      super do |format|
        redirect_to '/admin/new_requests' and return if resource.valid?
      end
    end
  end

  show do
    attributes_table do
      row :name
      row :surname
      row :description
      row :phone
      row :social_network
      row :email
      row :status
    end
    active_admin_comments
  end

  form do |f|
    f.inputs 'New requests' do
      f.input :name
      f.input :surname
      f.input :description
      f.input :phone
      f.input :social_network
      f.input :email
      f.input :status, as: :radio, :label => 'status', :collection => [ 'active', 'not_active' ]
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  index do
    selectable_column
    column :name do |user|
      user.name
    end
    column :email
    column :phone

    actions
  end

end