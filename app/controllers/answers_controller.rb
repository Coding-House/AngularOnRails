class AnswersController < ApplicationController
  def index
    render json: Answer.all
  end

  def create
    answer = Answer.create email: params[:email],
      body: params[:body],
      question_id: params[:question_id]
    render json: answer
  end

end
