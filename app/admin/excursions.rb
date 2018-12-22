ActiveAdmin.register Excursion do
  permit_params :name, :start_date, :short_description, :description, :guide_id

  filter :start_date, as: :date_time_range

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_date, as: :date_time_picker,  datepicker_options: { min_date: Data.today,        max_date: "+3D" }
      f.input :short_description
      f.input :description, :as => :froala_editor
      f.input :guide_id, as: :select, :collection => Participant.all.map{|t| [t.full_name, t.id]}
    end
    f.actions
  end
end
