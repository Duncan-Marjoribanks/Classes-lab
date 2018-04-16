require("minitest/autorun")
require("minitest/rg")
require_relative ("../part_a")

class TestStudent < MiniTest::Test


  def test_student_name
    student = Student.new("Duncan", 21)
    assert_equal("Duncan", student.get_name())
  end

  def test_student_cohort
    student = Student.new("Duncan", 21)
    assert_equal(21, student.get_cohort())
  end

def test_set_name
    student = Student.new("Duncan", 21)
    student.set_name("Ruairidh")
    assert_equal("Ruairidh", student.get_name())
end
def test_set_cohort
    student = Student.new("Duncan", 21)
    student.set_cohort(22)
    assert_equal(22, student.get_cohort())
end

def test_can_talk
      student = Student.new("Duncan", 21)
      assert_equal("I can talk", student.can_talk())
end

def test_fav_language
    student = Student.new("Duncan", 21)
    assert_equal("I love Ruby", student.fav_language("Ruby"))
end

end
