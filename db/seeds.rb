# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# project=Project.last

# 10.times do |i|
#     Task.create(project_id: project.id, title: "Title#{i}", done: %w[true false].sample, tags: ["tags#{i}"])
# end
countries = {
    'Georgia': %w[Tbilisi Batumi Rustavi Kutaisi],
    'Ukraine': %w[Kiev Kharkiv],
    'Germany': %w[Berlin Hamburg Bavaria]
}

countries.each do |country_name, cities|
    country = Country.create(name: country_name)
    cities.each do |city|
        country.cities << City.new(name: city)
    end
    country.save
end

