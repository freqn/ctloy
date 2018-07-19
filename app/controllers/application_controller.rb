class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def test_router
    render html: "TEST SUCESSFUL"
  end
end
