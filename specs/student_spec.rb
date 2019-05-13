require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../student.rb')

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Shaun", "G13", "Ruby")
  end

  def test_get_name
    assert_equal("Shaun", @student1.get_name)
  end

  def test_get_cohort
    assert_equal("G13", @student1.get_cohort)
  end

  def test_set_name
    @student1.set_name("Alan")
    assert_equal("Alan", @student1.get_name)
  end

  def test_set_cohort
    @student1.set_cohort("G15")
    assert_equal("G15", @student1.get_cohort)
  end

  def test_talk
    assert_equal("Shaun: I can talk! I can talk! I can talk!", @student1.talk)
  end

  def test_language_love
    assert_equal("Shaun: I love Ruby!", @student1.language_love)
  end

end
