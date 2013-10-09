json.array!(@kwasnies) do |kwasny|
  json.extract! kwasny, :imie, :ilewypil, :czyjesttakbardzochorynajakiegowyglada
  json.url kwasny_url(kwasny, format: :json)
end
