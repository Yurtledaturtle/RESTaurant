class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :num_of_party
      t.integer :status
      t.boolean :has_paid
      t.timestamps
    end
  end
end
