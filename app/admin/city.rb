ActiveAdmin.register City do
  permit_params :name, :city_type

  index do
    selectable_column
    id_column
    column :name
    column :city_type
    actions
  end

  filter :name

  form do |f|
    f.inputs "City Details" do
      f.input :name
      f.input :city_type
    end
    f.actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
