ActiveAdmin.register Employee do

 permit_params :mcm_userid, :first_name, :last_name, :doh, :branch, :dept_start_date, :prev_dept_id, :prev_dept_start_date, :department_id
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
