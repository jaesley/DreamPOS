require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#index' do
    let!(:user) { FactoryBot.create(:user) }

    context "when user is logged in" do
      context "and gives no search params" do
        before(:each) do
          sign_in user
          get :index
        end

        it 'responds with a status code of 200' do
          expect(response.status).to eq 200
        end

        it 'renders the index page' do
          expect(response).to render_template(:index)
        end

        it 'assigns @users instance variable to all users' do
          expect(assigns[:users]).to eq User.all
        end
      end

      context "and gives search params" do
        before(:each) do
          sign_in user
          get :index, params: { search: user.email }
        end

        it 'assigns @users instance variable to correct search results' do
          expect(assigns[:users]).to include user
        end
      end
    end

    context "when user is not logged in" do
      before(:each) do
        get :index
      end

      it 'responds with a status code of 302' do
        expect(response.status).to eq 302
      end

      it 'redirects to login page' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
