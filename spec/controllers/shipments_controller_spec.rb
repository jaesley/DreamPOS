require 'rails_helper'

RSpec.describe ShipmentsController, type: :controller do
  describe '#show' do
    let!(:user) { FactoryBot.create(:user) }
    let!(:shipment) { FactoryBot.create(:shipment) }

    context "when user is logged in" do
      before(:each) do
        sign_in user
        get :show, params: { id: shipment.id }
      end

      it 'responds with a status code of 200' do
        expect(response.status).to eq 200
      end

      it 'renders the show page' do
        expect(response).to render_template(:show)
      end

      it 'assigns @shipment instance variable to all items' do
        expect(assigns[:shipment]).to eq shipment
      end
    end

    context "when user is not logged in" do
      before(:each) do
        get :show, params: { id: shipment }
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
