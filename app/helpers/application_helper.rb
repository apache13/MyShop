module ApplicationHelper
  def product_image_tag(product)
    if(product != nil)
      image_tag('/products/'+product.code+'.jpg' ,:class => "img-rounded center-block" , :title => product.name)
    end
  end

  def number_format(number)
    number_with_precision(number, :precision => 2, :delimiter => ',')
  end
  
end
