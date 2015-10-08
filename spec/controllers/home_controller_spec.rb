require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "search" do
    it "returns http success" do
      get :search
      expect(response).to have_http_status(:success)
      expect(response).to render_template :show
    end
  end
end
