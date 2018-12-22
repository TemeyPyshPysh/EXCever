ActiveAdmin.register Excursion do
  permit_params :name, :short_description

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :short_description
    end
    f.actions
  end
end
