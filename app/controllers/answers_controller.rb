class AnswersController < ApplicationController
  def index
    render json: Answer.all
  end
end
