json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name, :due_date, :weight, :support, :content
  json.url assignment_url(assignment, format: :json)
end
