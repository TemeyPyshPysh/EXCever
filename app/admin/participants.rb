ActiveAdmin.register Participant do
  permit_params :full_name, :nickname, :photo

  filter :full_name
  filter :nickname

  index do
    selectable_column
    column :full_name
    column :rating
    column :nickname
    column :created_at
    column :photo do |participant|
      image_url = participant.photo.url
      image_tag image_url, size: '100x100' if image_url.present?
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :nickname
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
      row :full_name
      row :photo do |t|
        image_url = t.photo.url
        image_tag image_url, size: '100x100' if image_url.present?
      end
      row :rating
      row :nickname
      row :created_at
    end
  end
end
