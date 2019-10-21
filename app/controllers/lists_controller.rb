class ListsController < ApplicationController
 def index
    @list = List.all
 end

 def new
    @lists = List.new
 end

 def create
    @list = List.create(list_params)
    if @list.save
    end
    redirect_to root_path
 end

  def new_wish
   @lists = List.find(:id)
  end
 
  def show
  end
  private

  def list_params
    params.require(:list).permit(:list_name, :list_age, :list_wish)
  end 
 
end