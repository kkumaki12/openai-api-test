class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    respond_to do |format|
      format.html { redirect_to @question }
      format.js
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
