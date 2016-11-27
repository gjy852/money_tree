class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.integer :liabilities_value_total_id
      t.integer :user_id
      t.integer :liabilities_type_id
      t.integer :liabilities_value

      t.timestamps

    end
  end
end
