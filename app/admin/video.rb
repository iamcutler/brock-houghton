ActiveAdmin.register Video do
  index do
    column :title
    column :director
    column :archive
    column :order
    column :created_at
    actions
  end
end
