require 'rails_helper'

describe "routes spec", :type => :routing do
  context 'routes' do
    it "matches the home route to the home method of users controller" do
      expect(get("/")).
        to route_to("user_pages#home")
    end
    it "matches the help route to the home method of users controller" do
      expect(get("/help")).
        to route_to("user_pages#help")
    end
    it "matches the about route to the about method of users controller" do
      expect(get("/about")).
        to route_to("user_pages#about")
    end
    it "matches the contact route to the contact method of users controller" do
      expect(get("/contact")).
        to route_to("user_pages#contact")
    end
  end
end
