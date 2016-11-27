class CreateRetirementCalculations < ActiveRecord::Migration
  def change
    create_table :retirement_calculations do |t|
      t.integer :assumptions_id
      t.string :calculation_by_month

      t.timestamps

    end
  end
end
