json.array!(@templates) do |template|
  json.extract! template, :id, :name, :title, :body
  json.url template_url(template, format: :json)
end
