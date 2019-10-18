require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { filename: @student.filename, gakureki1: @student.gakureki1, gakureki2: @student.gakureki2, gakureki3: @student.gakureki3, gakureki4: @student.gakureki4, gakureki5: @student.gakureki5, gakureki6: @student.gakureki6, hiduke1: @student.hiduke1, hiduke2: @student.hiduke2, hiduke3: @student.hiduke3, hiduke4: @student.hiduke4, hiduke5: @student.hiduke5, hiduke6: @student.hiduke6, name: @student.name, namehurigana: @student.namehurigana, no: @student.no, seibetsu: @student.seibetsu, seinen: @student.seinen, shikaku: @student.shikaku, syutokubi: @student.syutokubi, zyusho: @student.zyusho, zyushohurigana: @student.zyushohurigana } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { filename: @student.filename, gakureki1: @student.gakureki1, gakureki2: @student.gakureki2, gakureki3: @student.gakureki3, gakureki4: @student.gakureki4, gakureki5: @student.gakureki5, gakureki6: @student.gakureki6, hiduke1: @student.hiduke1, hiduke2: @student.hiduke2, hiduke3: @student.hiduke3, hiduke4: @student.hiduke4, hiduke5: @student.hiduke5, hiduke6: @student.hiduke6, name: @student.name, namehurigana: @student.namehurigana, no: @student.no, seibetsu: @student.seibetsu, seinen: @student.seinen, shikaku: @student.shikaku, syutokubi: @student.syutokubi, zyusho: @student.zyusho, zyushohurigana: @student.zyushohurigana } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
