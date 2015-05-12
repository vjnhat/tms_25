class SubjectsController < ApplicationController
  def index
    @subjects = Subject.paginate page: params[:page], per_page: 20
  end
  
  def show
    @subject = Subject.find params[:id]
  end
end
