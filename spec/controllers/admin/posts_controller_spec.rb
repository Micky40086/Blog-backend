require 'rails_helper'

RSpec.describe Admin::PostsController, type: :controller do

  describe "index page" do
    context "user sign_in" do
      it "render template" do
        Role.create(name: "admin")
        admin = create(:role_admin)
        sign_in admin
        get :index
        
        assert_template 'admin/posts/index'
      end
    end
    
    context "user not sign_in" do
      it "redirect_to root" do
        get :index
        expect(response).to redirect_to(new_admin_session_path)
      end
    end
  end
end