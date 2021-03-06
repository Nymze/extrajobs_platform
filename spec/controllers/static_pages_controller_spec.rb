require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #userprohome" do
    it "returns http success" do
      get :userprohome
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #userhome" do
    it "returns http success" do
      get :userhome
      expect(response).to have_http_status(:success)
    end
  end

end
