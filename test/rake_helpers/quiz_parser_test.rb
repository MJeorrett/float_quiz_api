require 'minitest/autorun'
# require 'minitest/rg'
require_relative '../../lib/rake_helpers/quiz_parser'

class QuizParserTest < MiniTest::Test

  @@test_quiz_path = Rails.root + 'test/rake_helpers/test_quiz.csv'

  def setup
    @parsed_quiz = QuizParser.parse( @@test_quiz_path )
  end

  def test_first_question_as_expected
    expected = {
      text: "Question 1",
      answers: [
        { text: "Answer 1a", score: 15 },
        { text: "Answer 1b", score: 10 },
        { text: "Answer 1c", score: 5 },
        { text: "Answer 1d", score: 0 }
      ]
    }
    assert_equal( expected, @parsed_quiz.first )
  end

  def test_last_question_as_expected
    expected = {
      text: "Question 6",
      answers: [
        { text: "Answer 6a", score: 15 },
        { text: "Answer 6b", score: 10 },
        { text: "Answer 6c", score: 5 },
        { text: "Answer 6d", score: 0 }
      ]
    }
    assert_equal( expected, @parsed_quiz.last )
  end

  def test_correct_number_of_questions
    assert_equal( 6, @parsed_quiz.length )
  end

end
