ActiveAdmin.register Excursion do
  permit_params :name, :start_date, :short_description, :description, :guide_id, :photo

  filter :start_date
  filter :name

  index do
    selectable_column
    column :name
    column :start_date
    column :short_description
    column :updated_at
    column :photo do |excursion|
      image_url = excursion.photo.url
      image_tag image_url, size: '100x100' if image_url.present?
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_date, as: :date_time_picker
      f.input :short_description
      f.input :description, :as => :froala_editor
      f.input :guide_id, as: :select, :collection => Participant.all.map{|t| [t.full_name, t.id]}
      if f.object.photo.url.present?
        f.input :photo, :as => :file, :hint => image_tag(f.object.photo.url, class: 'image-preview')
      else
        f.input :photo, :as => :file
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :start_date
      row :guide_name do |excursion|
        Participant.find(excursion.guide_id).full_name
      end
      row :short_description
      row :description
      row :photo do |t|
        image_url = t.photo.url
        image_tag image_url, size: '150x150' if image_url.present?
      end
      row :updated_at
    end
  end
end
