class Delivery < ActiveRecord::Base
  belongs_to :receiver_profile
  attr_accessible :receiver_profile_id, :customer
end
