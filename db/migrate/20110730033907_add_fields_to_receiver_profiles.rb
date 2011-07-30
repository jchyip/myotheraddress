class AddFieldsToReceiverProfiles < ActiveRecord::Migration
  def self.up
    add_column :receiver_profiles, :latitude, :string
    add_column :receiver_profiles, :longitude, :string
    add_column :receiver_profiles, :name, :string
    add_column :receiver_profiles, :address, :string
    add_column :receiver_profiles, :rating, :integer
  end

  def self.down
    remove_column :receiver_profiles, :latitude, :string
    remove_column :receiver_profiles, :longitude, :string
    remove_column :receiver_profiles, :name, :string
    remove_column :receiver_profiles, :address, :string
    remove_column :receiver_profiles, :rating, :integer
  end
end
