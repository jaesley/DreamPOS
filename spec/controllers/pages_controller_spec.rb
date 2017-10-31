require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe '#index' do
    before(:each) { get :index }

    context "when user not logged in" do        
      it 'responds with a status code of 200' do
        expect(response.status).to eq 200
      end

      it 'renders the index page' do
        expect(response).to render_template(:index)
      end
    end
  end
end
