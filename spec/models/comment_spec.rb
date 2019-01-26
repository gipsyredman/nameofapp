require 'rails_helper'

describe Comment do
  let(:product) {Product.create!(name: "sunglasses")}
  let(:user) {@user = FactoryBot.create(:user)}
  let(:comment) {Comment.create!(user: user, product_id: product.id, body: "Comment", rating: 4)}

  it "must have a body" do
    comment.body = nil
    expect(comment).to_not be_valid
  end
  end
