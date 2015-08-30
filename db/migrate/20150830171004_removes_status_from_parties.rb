class RemovesStatusFromParties < ActiveRecord::Migration
  def change
    remove_column :parties, :status, :integer
  end
end
