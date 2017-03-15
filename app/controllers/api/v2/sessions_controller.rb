class Api::V2::SessionsController < ApplicationController
  
  def create
    student = Student.find_by(email: params[:email])
    if student && student.authenticate(params[:password])
      render json: student
    else
      render :nothing => true, :status => 400
    end
  end
end
