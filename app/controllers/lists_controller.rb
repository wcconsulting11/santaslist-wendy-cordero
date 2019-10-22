class ListsController < ApplicationController
 def index
    @lists = List.all
 end

 def new
   @lists = List.new
end

 def create
    @lists = List.create(lists_params)
   
    redirect_to root_path
 end

  def new_wish
   @lists = List.find(:id)
  end
 
  def show
  end
  private

  def lists_params
    params.require(:list).permit(:name, :age, :wish)
  end 
 
end