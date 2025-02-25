# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Supprime tous les articles existants pour éviter les doublons
# Article.destroy_all

# Crée 10 articles fictifs
10.times do
  Article.create(
    title: Faker::Book.title,       # Génère un titre de livre aléatoire
    content: Faker::Lorem.paragraphs(number: 3).join("\n\n")  # Génère 3 paragraphes de texte aléatoire
  )
end

puts "10 articles fictifs ont été créés !"
