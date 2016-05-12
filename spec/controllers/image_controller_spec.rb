require 'rails_helper'

describe ImagesController do
  describe "GET #index" do
    login_user

    context "when user is logged in" do
      it "renders the index page correctly" do
        get :index

        expect(response).to be_success
        expect(response).to render_template(:"images/index")
      end
    end
  end
end
