require 'rails_helper'

RSpec.describe User, type: :model do

  context "user validations" do

    it "is invalid without valid attributes" do
      expect(User.new).to_not be_valid
    end

    it "is valid with valid attributes" do
      expect(User.create(name: "Test", email: "test@example.com")).to be_valid
    end

    it "is not valid without a name" do
      user = User.new(name: nil)
      expect(user).to_not be_valid
    end

    it "is not valid without a email" do
      user = User.new(email: nil)
      expect(user).to_not be_valid
    end

    it "should have a unique email" do
      user1 = User.create(name: "test", email: "test@example.com")
      user2 = user1.dup
      expect(user1).to be_valid
      expect(user2).to_not be_valid
    end
  end
end
