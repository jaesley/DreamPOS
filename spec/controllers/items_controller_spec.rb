require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }
  let!(:item) { FactoryBot.create(:item) }

  describe '#index' do
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

        it 'assigns @items instance variable to all items' do
          expect(assigns[:items]).to eq Item.all
        end
      end

      context "and gives search params" do
        before(:each) do
          sign_in user
          get :index, params: { search: item.title.downcase }
        end

        it 'assigns @items instance variable to correct search results' do
          expect(assigns[:items]).to include item
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

  describe '#show' do
    before(:each) do
      sign_in user
      get :show, params: { id: item.id }
    end

    it 'responds with a status code of 200' do
      expect(response.status).to eq 200
    end

    it 'renders the show page' do
      expect(response).to render_template(:show)
    end

    it 'assigns @item instance variable to correct item' do
      expect(assigns[:item]).to eq item
    end
  end
end
