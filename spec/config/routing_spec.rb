require 'rails_helper'

describe "routes", :type => :routing do
  
  context 'users' do
    it "matches the new route to the home method of users" do
      expect(get("/signup")).
        to route_to("users#new")
    end
  end

  context 'user pages' do
    it "matches the home route to the home method of user_pages" do
      expect(get("/")).
        to route_to("user_pages#home")
    end
    it "matches the help route to the home method of user_pages" do
      expect(get("/help")).
        to route_to("user_pages#help")
    end
    it "matches the about route to the about method of user_pages" do
      expect(get("/about")).
        to route_to("user_pages#about")
    end
    it "matches the contact route to the contact method of user_pages" do
      expect(get("/contact")).
        to route_to("user_pages#contact")
    end
  end

end
