json.array!(@carriers) do |carrier|
  json.extract! carrier, :id, :title, :content, :annocument_date
  json.url carrier_url(carrier, format: :json)
end
