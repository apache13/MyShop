json.array!(@products) do |product|
  json.extract! product, :id, :code, :name, :description, :volume, :mk_price, :sp_price
  json.url product_url(product, format: :json)
end
