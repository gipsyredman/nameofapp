require 'rails_helper'

describe CommentsController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
  end
  let(:product){ Product.create!(name: "Sunglasses")}
  it 'successfully comments on the product' do
    expect(response).to have_http_status(200)
  end

end
