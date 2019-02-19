require 'rails_helper'

describe ProductsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    let(:product){ Product.create!(name: "Sunglasses")}
  end

  describe 'GET #index' do
    it 'renders products index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

    context 'GET #show' do
      it 'renders login page' do
        get :show, params: {id: @product}
        expect(response).to redirect_to new_user_session_path
      end
    end
end
