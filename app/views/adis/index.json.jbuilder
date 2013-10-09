json.array!(@adis) do |adi|
  json.extract! adi, 
  json.url adi_url(adi, format: :json)
end
