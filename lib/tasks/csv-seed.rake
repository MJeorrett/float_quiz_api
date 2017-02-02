require 'csv'
require_relative '../rake_helpers/quiz_parser'

task "csv-seed" => :environment do
  quiz_path = Rails.root + 'lib/assets/quiz.csv'
  questions_data = QuizParser.parse( quiz_path )
  questions_data.each do |question_data|
    question = Question.create({ text: question_data[:text] })

    question_data[:answers].each do |answer_data|
      Answer.create({
        question_id: question.id,
        text: answer_data[:text],
        score: answer_data[:score]
      })
    end
  end
end
