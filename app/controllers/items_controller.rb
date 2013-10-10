class ItemsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    if params.has_key?('search_word')
      mask = '%' + params[:search_word] + '%'
      @items = Item.where("(items.title LIKE ? OR items.description LIKE ? OR items.text LIKE ?) AND items.income <= ?", mask, mask, mask, params[:item][:income])
    else
      @items = nil
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render action: "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])
    redirect_to @item, notice: 'Item was successfully updated.'
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

end
