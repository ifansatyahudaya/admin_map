ActiveAdmin.register City do
  permit_params :name, :city_type
  belongs_to :province

  index do
    selectable_column
    id_column
    column :name
    column :city_type
    column :province_id
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

  # form do |f|
  #   f.inputs "City Details" do
  #     f.has_many :provinces do |province|
  #       province.input :name
  #       province.input :city_type
  #       province.input :province_id
  #     end
  #   end
  #   f.actions
  # end

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
