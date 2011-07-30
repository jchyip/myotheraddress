class CreateSelectReceivers < ActiveRecord::Migration
  def self.up
    create_table :select_receivers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :select_receivers
  end
end
