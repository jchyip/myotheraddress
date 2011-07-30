class AddReceiverToDeliveries < ActiveRecord::Migration
  def self.up
    add_column :deliveries, :receiver_profile_id, :integer
  end

  def self.down
    remove_column :deliveries, :receiver_profile_id
  end
end
