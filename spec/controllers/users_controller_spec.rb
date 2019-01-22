require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) {User.create!(email: "mail@email.com", password: "password")}
  let(:user2) {User.create!(email: "mail2@email.com", password: "password")}

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
      it 'loads correct user details' do
        get :show, params: {id: user.id}
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end

      it 'is unable to access another users show page' do
        get :show, params: { id: user2.id}
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: {id: user.id}
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end
end
