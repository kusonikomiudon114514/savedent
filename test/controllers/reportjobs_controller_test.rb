require 'test_helper'

class ReportjobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reportjob = reportjobs(:one)
  end

  test "should get index" do
    get reportjobs_url
    assert_response :success
  end

  test "should get new" do
    get new_reportjob_url
    assert_response :success
  end

  test "should create reportjob" do
    assert_difference('Reportjob.count') do
      post reportjobs_url, params: { reportjob: { bunnsyouryou: @reportjob.bunnsyouryou, day: @reportjob.day, iin: @reportjob.iin, interview_id: @reportjob.interview_id, ithizi_hikki: @reportjob.ithizi_hikki, ithizi_mensetsu: @reportjob.ithizi_mensetsu, ithizi_tekisei: @reportjob.ithizi_tekisei, mediation_id: @reportjob.mediation_id, mensetsusonota: @reportjob.mensetsusonota, nizi_hikki: @reportjob.nizi_hikki, nizi_mennsetsu: @reportjob.nizi_mennsetsu, nizi_tekisei: @reportjob.nizi_tekisei, other: @reportjob.other, sakubun: @reportjob.sakubun, shikennzyou: @reportjob.shikennzyou, shitsumon: @reportjob.shitsumon, status: @reportjob.status, subject_id: @reportjob.subject_id, syokusyu: @reportjob.syokusyu, syozaiti: @reportjob.syozaiti, user_id: @reportjob.user_id, zigyousyo: @reportjob.zigyousyo, zikan_english: @reportjob.zikan_english, zikan_ippann: @reportjob.zikan_ippann, zikan_ithihi: @reportjob.zikan_ithihi, zikan_ithime: @reportjob.zikan_ithime, zikan_ithisa: @reportjob.zikan_ithisa, zikan_japanese: @reportjob.zikan_japanese, zikan_math: @reportjob.zikan_math, zikan_mensetsu: @reportjob.zikan_mensetsu, zikan_nihi: @reportjob.zikan_nihi, zikan_nime: @reportjob.zikan_nime, zikan_nisa: @reportjob.zikan_nisa, zikan_nite: @reportjob.zikan_nite, zikan_social: @reportjob.zikan_social, zikan_tekisei: @reportjob.zikan_tekisei, zyukennsyasuu: @reportjob.zyukennsyasuu } }
    end

    assert_redirected_to reportjob_url(Reportjob.last)
  end

  test "should show reportjob" do
    get reportjob_url(@reportjob)
    assert_response :success
  end

  test "should get edit" do
    get edit_reportjob_url(@reportjob)
    assert_response :success
  end

  test "should update reportjob" do
    patch reportjob_url(@reportjob), params: { reportjob: { bunnsyouryou: @reportjob.bunnsyouryou, day: @reportjob.day, iin: @reportjob.iin, interview_id: @reportjob.interview_id, ithizi_hikki: @reportjob.ithizi_hikki, ithizi_mensetsu: @reportjob.ithizi_mensetsu, ithizi_tekisei: @reportjob.ithizi_tekisei, mediation_id: @reportjob.mediation_id, mensetsusonota: @reportjob.mensetsusonota, nizi_hikki: @reportjob.nizi_hikki, nizi_mennsetsu: @reportjob.nizi_mennsetsu, nizi_tekisei: @reportjob.nizi_tekisei, other: @reportjob.other, sakubun: @reportjob.sakubun, shikennzyou: @reportjob.shikennzyou, shitsumon: @reportjob.shitsumon, status: @reportjob.status, subject_id: @reportjob.subject_id, syokusyu: @reportjob.syokusyu, syozaiti: @reportjob.syozaiti, user_id: @reportjob.user_id, zigyousyo: @reportjob.zigyousyo, zikan_english: @reportjob.zikan_english, zikan_ippann: @reportjob.zikan_ippann, zikan_ithihi: @reportjob.zikan_ithihi, zikan_ithime: @reportjob.zikan_ithime, zikan_ithisa: @reportjob.zikan_ithisa, zikan_japanese: @reportjob.zikan_japanese, zikan_math: @reportjob.zikan_math, zikan_mensetsu: @reportjob.zikan_mensetsu, zikan_nihi: @reportjob.zikan_nihi, zikan_nime: @reportjob.zikan_nime, zikan_nisa: @reportjob.zikan_nisa, zikan_nite: @reportjob.zikan_nite, zikan_social: @reportjob.zikan_social, zikan_tekisei: @reportjob.zikan_tekisei, zyukennsyasuu: @reportjob.zyukennsyasuu } }
    assert_redirected_to reportjob_url(@reportjob)
  end

  test "should destroy reportjob" do
    assert_difference('Reportjob.count', -1) do
      delete reportjob_url(@reportjob)
    end

    assert_redirected_to reportjobs_url
  end
end
