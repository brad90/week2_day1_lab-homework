require('minitest/autorun')
require('minitest/rg')
require_relative('../part_a_student')

class TestStudent < Minitest::Test

  def test_student_name
    student= Student.new('bob', 'e30', 'Ruby')
    assert_equal('bob', student.name)
  end

  def test_student_cohort
    student= Student.new('bob', 'e30', 'Ruby')
    assert_equal('e30',student.cohort)
  end

 # when to use brakcets only with the asser

  def test_set_student_name
    student= Student.new('bob', 'e30', 'Ruby')
    student.set_student_name('chad')
    assert_equal('chad', student.name)
  end

  def test_set_student_cohort
    student= Student.new('bob', 'e30', 'Ruby')
    student.set_student_cohort('e300')
    assert_equal('e300',student.cohort)
  end

  def test_student_can_talk_its_a_miracle
    student= Student.new('bob', 'e30', 'Ruby')
    result = student.student_can_talk
    assert_equal('I can talk!', result)
  end

  def test_students_favourite_programming_language
    student= Student.new('bob', 'e30', 'Ruby')
    result = student.student_fav_prog_lang
    assert_equal('I love Ruby!', result)
  end













end
