class AddFieldsToDeliveries < ActiveRecord::Migration
  def self.up
    add_column :deliveries, :name, :string
    add_column :deliveries, :order_date, :date
    add_column :deliveries, :expected_date, :date
    add_column :deliveries, :status, :string
  end

  def self.down
    remove_column :deliveries, :name
    remove_column :deliveries, :order_date
    remove_column :deliveries, :expected_date
    remove_column :deliveries, :status
  end
end
