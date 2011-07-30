class AddCustomerToDelivery < ActiveRecord::Migration
  def self.up
    add_column :deliveries, :customer, :string
  end

  def self.down
    remove_column :deliveries, :customer
  end
end
