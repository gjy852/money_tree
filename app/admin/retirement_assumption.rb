ActiveAdmin.register RetirementAssumption do

 permit_params :age_id, :last_year_saving_id, :investment_return, :inflation, :increase_in_savings, :annual_savings, :initial_savings, :retirement_income, :retirement_age, :user_id

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
