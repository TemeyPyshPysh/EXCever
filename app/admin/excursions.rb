ActiveAdmin.register Excursion do
  permit_params :name, :short_description, :description

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :short_description
      f.input :description
      f.input :start_date
      f.input :guide_id, as: :select, :collection => Participant.all.map{|t| [t.full_name, t.nickname, t.id]}
    end
    f.actions
  end
end
