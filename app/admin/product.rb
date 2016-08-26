ActiveAdmin.register Product do
  permit_params :name, :price

  index do
    selectable_column
    id_column
    column :name
    column :price
    actions
  end

  filter :name
  
  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :price    
    end
    f.actions
  end

end
