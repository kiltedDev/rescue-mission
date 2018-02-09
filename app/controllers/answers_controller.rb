class AnswersController < ApplicationController
  before_action :set_question
  before_action :set_answer, only: [:index, :show, :edit, :update]

  def index

  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      redirect_to @question, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_question
      @question = Question.find(params[:question_id])
    end

    def set_answers
      @answers = @question.answers
    end

    def answer_params
      params.require(:answer).permit(:title, :description, :question_id)
    end
end
