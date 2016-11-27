class CreateLiabilityTypes < ActiveRecord::Migration
  def change
    create_table :liability_types do |t|
      t.integer :mortgage
      t.integer :student_loan
      t.integer :credit_card
      t.integer :car_loan
      t.integer :other_liabilities

      t.timestamps

    end
  end
end
