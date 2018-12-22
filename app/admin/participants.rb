ActiveAdmin.register Participant do
  permit_params :full_name, :nickname

  filter :full_name, :nickname

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :nickname
    end
    f.actions
  end
end
