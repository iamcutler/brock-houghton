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

  form do |f|
    f.inputs "Video" do
      f.input :title
      f.input :director
      f.input :order
      f.input :image
    end

    f.actions
  end

  # Allow ActiveAdmin admins to freely mass-assign when using strong_parameters
  permit_params :title, :director, :order, :image
end
