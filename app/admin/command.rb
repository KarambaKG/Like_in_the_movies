ActiveAdmin.register Command do
  config.filters = false

  permit_params :name, :description, :avatar

  index do
    selectable_column
    id_column
    column :name
    column :description
    column 'Avatar' do |command|
      image_tag command.avatar.url(:thumb)
    end
    column :created_at
    actions
  end

  show do |command|
    attributes_table do
      row :name
      row :description
      row :thumbnail do
        image_tag(command.avatar.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :avatar
    end
    f.actions
  end
end