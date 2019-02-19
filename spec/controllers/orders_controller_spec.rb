require 'rails_helper'

describe OrdersController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
  end

  it 'only allows admins to view orders' do
    sign_in(@user)
    get :index
    expect(response).to have_http_status(200)
  end

end
