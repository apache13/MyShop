json.array!(@intervals) do |interval|
  json.extract! interval, :id, :detail
  json.url interval_url(interval, format: :json)
end
