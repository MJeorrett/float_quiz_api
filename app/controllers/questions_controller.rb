class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions.as_json(
      include: [
        { answers: { except: [ :id, :question_id, :created_at, :updated_at ] } }
      ],
      except: [ :id, :created_at, :updated_at ]
    )
  end
end
