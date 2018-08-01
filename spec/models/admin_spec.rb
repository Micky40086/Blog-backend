require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe "valid Admin" do
    it "is valid with a eamil and password" do
      admin = create(:admin)
      expect(admin).to be_valid
    end

    it "admin's email is unique" do
      Admin.create(email: "hehe@gmail.com", password: "HEHEHEHE")
      admin = Admin.new(email: "hehe@gmail.com", password: "HEHEHEHE")
      admin.valid?
      expect(admin.errors[:email]).to include("has already been taken")
    end

    it "is invalid without an email address" do
      admin = build(:admin, email: nil)
      admin.valid?
      expect(admin.errors[:email]).to include("can't be blank")
    end
  end

  describe "Admin Scope" do
    it "search email" do
      admin = create(:admin)
      expect(Admin.search("HeHe")).to eq([admin])
    end
  end
end
