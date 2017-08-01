ActiveAdmin.register Command do

  permit_params :name, :description, :avatar

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :avatar
    column :created_at
    actions
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