json.extract! teacher, :id, :name, :nickname, :image, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
json.image url_for(teacher.image)
