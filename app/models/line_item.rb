class LineItem < ActiveRecord::Base
  
  before_save :cal_amount
  
  belongs_to :order
  belongs_to :product
  
  private
  def cal_amount
    self.amount = product.sp_price * self.quantity
  end
  
end
