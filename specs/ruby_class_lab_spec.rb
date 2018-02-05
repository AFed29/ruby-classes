require('minitest/autorun')
require_relative('../ruby_class_lab')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Alex", 19)
  end

  def test_return_name
    name = @student.name()
    assert_equal("Alex", name)
  end

  def test_return_cohort
    cohort = @student.cohort()
    assert_equal(19, cohort)
  end

  def test_set_name
    @student.name="Callum"
    name = @student.name()
    assert_equal("Callum", name)
  end

  def test_set_cohort
    @student.cohort=16
    cohort = @student.cohort()
    assert_equal(16, cohort)
  end

  def test_student_talk
    talk = @student.talk()
    assert_equal("I can talk!", talk)
  end

  def test_say_favourite_language
    say_favourite_language = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", say_favourite_language)
  end

end
