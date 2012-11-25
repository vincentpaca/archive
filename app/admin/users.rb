ActiveAdmin.register User do
  index do
    selectable_column
    column :id
    column :username
    column :last_sign_in_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :username
      f.input :password
      f.input :password_confirmation
    end

    f.buttons
  end
end
