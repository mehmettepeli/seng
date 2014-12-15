json.array!(@presses) do |press|
  json.extract! press, :id, :title, :content, :pressdate
  json.url press_url(press, format: :json)
end
