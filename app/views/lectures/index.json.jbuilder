json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :content, :slides
  json.url lecture_url(lecture, format: :json)
end
