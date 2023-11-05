json.extract! school, :id, :name, :logo, :created_at, :updated_at
json.url school_url(school, format: :json)
json.logo url_for(school.logo)
