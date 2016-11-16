class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.integer :mortgage
      t.integer :student_loan
      t.integer :credit_cards
      t.string :liabilities_total

      t.timestamps

    end
  end
end
