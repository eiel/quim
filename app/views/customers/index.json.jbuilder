json.array!(@customers) do |customer|
  json.extract! customer, :id, :last_name, :first_name
  json.url customer_url(customer, format: :json)
end
