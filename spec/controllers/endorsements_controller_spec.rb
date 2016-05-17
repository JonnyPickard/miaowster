require 'rails_helper'

describe EndorsementsController do
  describe "POST #create" do
    login_user

    it "redirects to /images/index path" do
      image = create(:image)

      post :create, image_id: image.id

      expect(response).to redirect_to images_path
    end
  end
end
