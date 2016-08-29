ActiveAdmin.register Province do
permit_params :name, :capital

  index do
    selectable_column
    id_column
    column "Name" do |province|
      link_to province.name, '#'
    end
    column :capital
    actions
  end

  filter :name

  form do |f|
    f.inputs "Province Details" do
      f.input :name
      f.input :capital
    end
    f.actions
  end

member_action :comments do
@comments = resource.comments
# This will render app/views/admin/posts/comments.html.erb
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
