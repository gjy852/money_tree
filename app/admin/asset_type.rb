ActiveAdmin.register AssetType do

 permit_params :checking_account, :savings_account, :other_cash_equivalents, :brokerage, :retirement, :real_estate, :other_invested_assets, :principal_home, :car, :other_use_assets

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
