require 'rails_helper'

describe Product do
  let(:product) { Product.create!(name: "sunglasses") }
  let(:user) {User.create!(email: "mail@email.com", password: "password")}

  before do
    product.comments.create!(rating: 1, user: user, body: "Awful sunglasses")
    product.comments.create!(rating: 3, user: user, body: "Decent sunglasses")
    product.comments.create!(rating: 5, user: user, body: "Best sunglasses")
end

it "returns the average rating of all comments" do
  expect(product.average_rating).to eq 3
end
end
