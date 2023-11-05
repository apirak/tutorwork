json.extract! curriculum, :id, :name, :short_name, :description, :created_at, :updated_at
json.url curriculum_url(curriculum, format: :json)
