json.array!(@course_details) do |course_detail|
  json.extract! course_detail, :id, :instructor, :office
  json.url course_detail_url(course_detail, format: :json)
end
