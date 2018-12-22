ActiveAdmin.register Excursion do
  permit_params :name, :start_date, :short_description, :description, :guide_id

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_date, as: :date_time_picker
      f.input :short_description
      f.input :description, :as => :froala_editor
      f.input :color, as: :color_picker
      f.input :guide_id, as: :select, :collection => Participant.all.map{|t| [t.full_name, t.id]}
    end
    f.actions
  end
end
