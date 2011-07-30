class Delivery < ActiveRecord::Base
  attr_accessor :name
  attr_accessor :order_date
  attr_accessor :expected_date
  attr_accessor :status
end
