class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :age
      t.string :first_name
      t.string :last_name
      t.string :individual_net_worth
      t.string :individual_retirement_goal
      t.integer :annual_savings
      t.string :current_income
      t.string :email
      t.string :password

      t.timestamps

    end
  end
end
