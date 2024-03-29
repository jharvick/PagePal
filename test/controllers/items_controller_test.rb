require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/items.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Item.count, data.length
  end

  test "create" do
    assert_difference "Item.count", 1 do
      post "/items.json",
        params: { name: "Pariah", image_url: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1347352994i/13417141.jpg", description: "A culmination of the Inquisitor series", category: "Sci-Fi" }
        # headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end

end
