module ApplicationHelper
  def product_image_tag(product)
    if(product != nil)
        image_tag('/products/'+product.code+'.jpg' ,:class => "img-rounded center-block" , :title => product.name)
    end

  end
end
