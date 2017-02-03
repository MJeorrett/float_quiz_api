require 'csv'

class QuizParser

  def self.parse( file_name )
    lines = CSV.read( file_name )

    raw_scores = lines.shift
    raw_scores.shift
    scores = raw_scores.map do |raw_score|
      raw_score.to_i
    end

    return lines.map do |line|
      question_text = line.shift
      answers = line.each_with_index.map do |answer, index|
        {
          text: answer,
          score: scores[index]
        }
      end

      {
        text: question_text,
        answers: answers
      }
    end
  end

end
