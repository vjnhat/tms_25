class UserSubjectsController < ApplicationController
  def update
    @var = UserSubject.find params[:id]
    @var.update_attributes status: t(:completed)
  end
end
