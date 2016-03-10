class AddExtCostToTimeEntries < ActiveRecord::Migration
  def self.up
    add_column :time_entries, :ext_cost, :decimal, :precision => 15, :scale => 2
  end

  def self.down
    remove_column :time_entries, :ext_cost
  end
end
