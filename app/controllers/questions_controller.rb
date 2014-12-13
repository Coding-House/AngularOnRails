class QuestionsController < ApplicationController
  def index
    render json: Question.all.to_json(methods: [:gravatar_url])
  end

  def create
    question = Question.create email: params[:email],
      body: params[:body]
    render json: question
  end
end
