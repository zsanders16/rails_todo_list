
class ListItemController < ApplicationController
  def index
    @list_items = ListItem.all
  end

  def show
    @list_item = ListItem.find(params[:id])
  end

  def new
    @list_item = ListItem.new
  end

  def edit
    @list_item = ListItem.find(params[:id])
  end

  def update
    @list_item = ListItem.find(params[:id])
    if @list_item.update(list_item_params)
      redirect_to list_item_path
    else
      render :edit
    end
    
  end

  def destroy
    @list_item = ListItem.find(params[:id])
    @list_item.destroy
    redirect_to list_item_path 
  end

  private 

    def list_item_params
      params.require(:list_item).permit(:title, :description)
    end
    
  
end
