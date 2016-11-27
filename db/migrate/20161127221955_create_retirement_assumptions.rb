class CreateRetirementAssumptions < ActiveRecord::Migration
  def change
    create_table :retirement_assumptions do |t|
      t.integer :age_id
      t.integer :last_year_saving_id
      t.integer :investment_return
      t.string :inflation
      t.string :increase_in_savings
      t.string :annual_savings
      t.string :initial_savings
      t.string :retirement_income
      t.string :retirement_age
      t.integer :user_id

      t.timestamps

    end
  end
end
