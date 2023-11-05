json.extract! parent, :id, :name, :nickname, :address, :image, :created_at, :updated_at
json.url parent_url(parent, format: :json)
json.image url_for(parent.image)
