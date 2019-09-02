
50.times do
  Restaurant.create(r_name: Faker::Restaurant.name, r_type: Faker::Restaurant.type,
    r_description: Faker::Restaurant.description , r_review: Faker::Restaurant.review,
    rating: Faker::Number.between(from: 1, to: 5))
end
