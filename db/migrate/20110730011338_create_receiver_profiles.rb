class CreateReceiverProfiles < ActiveRecord::Migration
  def self.up
    create_table :receiver_profiles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :receiver_profiles
  end
end
