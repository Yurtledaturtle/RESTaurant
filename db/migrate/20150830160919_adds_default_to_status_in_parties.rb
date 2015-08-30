class AddsDefaultToStatusInParties < ActiveRecord::Migration
  def change
   change_column :parties, :status, :integer
 end

 def down
   change_column :parties, :status, :integer, default: 0
 end
end
