require 'rails_helper'

describe ImagesController do
  xdescribe "GET #index" do

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

  xdescribe "GET #new" do
    login_user

    it "renders the new image page successfully" do
      get :new

      expect(response).to be_success
      expect(response).to render_template(:"images/new")
    end
  end

  xdescribe "POST #create" do
    login_user

    context "image is successfully created" do
      it "redirects to images/index" do
        post :create, image: attributes_for(:image)

        expect(flash[:notice]).to match(/^Image was successfully uploaded./)
        expect(response).to redirect_to images_path
      end
    end

    context "image not created" do
      it "rediects to images/new" do
        post :create, image: { title: "Invalid" } #incorrect parameters

        expect(flash[:notice]).to match(/^Sorry the Image could not be uploaded at this time./)
        expect(response).to redirect_to new_image_path
      end
    end
  end

  describe "GET #show" do
    login_user

    it "redirects to image path" do
      image = create(:image)

      get :show, id: image.id

      expect(response.status).to eq(200)
      expect(response).to render_template :show
    end
  end
end
