class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @quesion.body = params[:question][:body]

    if @question.save
      flash[:notice] = "Question was saved."
      redirect_to @question
    else
      flash.now[:alert] = "There was an error saving the question. Please try again."
      render :new
    end
  end

  def delete
    @question = Question.find(params[:id])
    if @question.delete
      flash[:notice] = "\"#{@question.title}\" was deleted successfully."
      redirect_to questions_path
    else
      flash.now[:alert] = "There was an erre deleting the question."
      render :show
    end 
  end
end
