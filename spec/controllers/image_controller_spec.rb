require 'rails_helper'

describe ImagesController do
  describe "GET #index" do

    context "when user is logged in" do
      login_user

      it "renders the index page successfully" do
        get :index

        expect(response).to be_success
        expect(response).to render_template(:"images/index")
      end
    end

    context "when user is not logged in" do
      it "redirects to /users/sign_in" do
        get :index

        expect(response).to redirect_to("http://test.host/users/sign_in")
      end
    end
  end

  describe "GET #new" do
    login_user

    it "renders the new image page successfully" do
      get :new

      expect(response).to be_success
      expect(response).to render_template(:"images/new")
    end
  end
end
