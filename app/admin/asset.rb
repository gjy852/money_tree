ActiveAdmin.register Asset do

 permit_params :stocks_and_stock_funds, :cash, :retirement_account, :real_estate, :asset_total, :bonds, :health_savings_account, :asset_detailed_info

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
