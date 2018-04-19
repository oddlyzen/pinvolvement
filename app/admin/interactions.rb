ActiveAdmin.register Interaction do
  permit_params :user_id, :project_id, :comment, :lat, :long, :created_at, :updated_at, :first_name, 
                :last_name, :email, :phone, :street_address, :city, :state, :zip, :subject

  index do
    selectable_column
    id_column
    column :project_id
    column :subject
    column :email
  end

  filter :project_id
  filter :subject
  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone
      f.input :street_address
      f.input :city
      f.input :state
      f.input :zip
      f.input :subject
      f.input :comment
    end
    f.actions
  end

end
