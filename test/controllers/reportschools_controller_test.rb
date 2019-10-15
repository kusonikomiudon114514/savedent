require 'test_helper'

class ReportschoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reportschool = reportschools(:one)
  end

  test "should get index" do
    get reportschools_url
    assert_response :success
  end

  test "should get new" do
    get new_reportschool_url
    assert_response :success
  end

  test "should create reportschool" do
    assert_difference('Reportschool.count') do
      post reportschools_url, params: { reportschool: { course: @reportschool.course, detail: @reportschool.detail, english: @reportschool.english, exam_id: @reportschool.exam_id, field_id: @reportschool.field_id, gakka: @reportschool.gakka, gakkou: @reportschool.gakkou, gakubu: @reportschool.gakubu, gokaku: @reportschool.gokaku, japanese: @reportschool.japanese, kanso: @reportschool.kanso, math: @reportschool.math, mennsetsu: @reportschool.mennsetsu, recommended_id: @reportschool.recommended_id, science: @reportschool.science, shikenn: @reportschool.shikenn, shikennbi: @reportschool.shikennbi, shikennzyou: @reportschool.shikennzyou, social: @reportschool.social, status: @reportschool.status, syoronnbunn: @reportschool.syoronnbunn, syozaichi: @reportschool.syozaichi, type_id: @reportschool.type_id, user_id: @reportschool.user_id } }
    end

    assert_redirected_to reportschool_url(Reportschool.last)
  end

  test "should show reportschool" do
    get reportschool_url(@reportschool)
    assert_response :success
  end

  test "should get edit" do
    get edit_reportschool_url(@reportschool)
    assert_response :success
  end

  test "should update reportschool" do
    patch reportschool_url(@reportschool), params: { reportschool: { course: @reportschool.course, detail: @reportschool.detail, english: @reportschool.english, exam_id: @reportschool.exam_id, field_id: @reportschool.field_id, gakka: @reportschool.gakka, gakkou: @reportschool.gakkou, gakubu: @reportschool.gakubu, gokaku: @reportschool.gokaku, japanese: @reportschool.japanese, kanso: @reportschool.kanso, math: @reportschool.math, mennsetsu: @reportschool.mennsetsu, recommended_id: @reportschool.recommended_id, science: @reportschool.science, shikenn: @reportschool.shikenn, shikennbi: @reportschool.shikennbi, shikennzyou: @reportschool.shikennzyou, social: @reportschool.social, status: @reportschool.status, syoronnbunn: @reportschool.syoronnbunn, syozaichi: @reportschool.syozaichi, type_id: @reportschool.type_id, user_id: @reportschool.user_id } }
    assert_redirected_to reportschool_url(@reportschool)
  end

  test "should destroy reportschool" do
    assert_difference('Reportschool.count', -1) do
      delete reportschool_url(@reportschool)
    end

    assert_redirected_to reportschools_url
  end
end
