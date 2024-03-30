class ItemsController < ApplicationController
  def index
    @items = Item.where(user_id: current_user.id)
    render :index
  end

  def create
    @item = Item.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
      user_id: current_user.id
    )
    render :show
  end

    def show
      @item = Item.find_by(id: params[:id], user_id: current_user.id)
      render :show
    end

    def update
      @item = Item.find_by(id: params[:id], user_id: current_user.id)
      @item.update(
        name: params[:name] || @item.name,
        image_url: params[:image_url] || @item.image_url,
        description: params[:description] || @item.description,
        category: params[:category] || @item.category,
      )
      render :show
    end

    def destroy
      @item = Item.find_by(id: params[:id], user_id: current_user.id)
      @item.destroy
      render json: { message: "Item has been destroyed successfully" }
    end
  end
