# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "yaml"

seed_data = YAML.load_file(Rails.root.join("db", "seeds_data.yml"))
seed_data["rooms"].each { |data| Room.create!(data) }
seed_data["teachers"].each do |data|
  teacher = Teacher.new(name: data["name"], nickname: data["nickname"])
  teacher.image.attach(
    io:
      File.open(Rails.root.join("app", "assets", "images", data["image_path"])),
    filename: data["image_path"],
  )
  teacher.save!
end
