require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    user = User.create!(name: "Test", email: "test@test.com", password: "password", password_confirmation: "password")
    post "/sessions.json", params: { email: user.email, password: "password" }
    assert_response 201
  
    data = JSON.parse(response.body)
    assert_equal ["jwt", "email", "user_id"], data.keys
  end
end
