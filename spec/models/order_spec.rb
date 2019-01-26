require 'rails_helper'

describe Order do
  let(:product) { Product.create!(name:"sunglasses")}
  let(:user) {@user = FactoryBot.create(:user)}
  it "has a quantity of at least 1 item" do
    expect(Order.new(user: user, product: product, total: 1)).to be_valid
end
end
