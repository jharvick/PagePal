class BooksController < ApplicationController
  def index
    search_terms = params[:search_terms]
    response = HTTP.get("https://www.googleapis.com/books/v1/volumes?q=#{search_terms}&key=#{ENV["GOOGLE_BOOKS_API_KEY"]}")

    if response.status.success?
      books = response.parse["items"]
      render json: books
    else
      render json: { error: "Failed to fetch books" }, status: :unprocessable_entity
    end
  end
end

