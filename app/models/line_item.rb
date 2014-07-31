class LineItem < ActiveRecord::Base
  
  belongs_to :order
  belongs_to :product
  
  def amount
    return product.sp_price * self.quantity
  end
  
end
