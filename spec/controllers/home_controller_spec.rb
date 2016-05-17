require 'rails_helper'

describe HomeController do
  describe "GET #index" do
    login_user

    it "renders the index page successfully" do
      get :index

      expect(response).to be_success
      expect(response).to render_template(:"home/index")
    end

  end
end
