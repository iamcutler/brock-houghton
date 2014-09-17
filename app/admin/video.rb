ActiveAdmin.register Video do
  index do
    column :title
    column :director
    column :archive
    column :order
    column :created_at
    actions
  end

  show do |video|
    attributes_table do
      row :title
      row :director
      row :archive
      row :order
      row :created_at
      row :updated_at
      row :image do
        image_tag video.image.url(:thumb)
      end
    end
  end
end
