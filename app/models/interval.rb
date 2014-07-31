class Interval < ActiveRecord::Base
  has_many :orders
  
  def summary
     sum = 0
     self.orders.each do |order|
       sum += order.total
     end
     return sum
  end

end
