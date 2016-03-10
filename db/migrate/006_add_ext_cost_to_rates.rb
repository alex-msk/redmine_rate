class AddExtCostToRates < ActiveRecord::Migration
  def self.up
    add_column :rates, :ext_amount, :decimal, :precision => 15, :scale => 2
  end

  def self.down
    remove_column :rates, :ext_amount
  end
end
