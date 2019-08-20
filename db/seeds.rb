# frozen_string_literal: true

require 'faker'

# TODO: Write a seed to insert 100 posts in the database
10.times do
  Article.create(title: Faker::Lorem.word, content: Faker::Lorem.paragraph)
end
