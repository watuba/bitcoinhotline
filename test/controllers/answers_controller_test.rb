require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, answer: { score10: @answer.score10, score11: @answer.score11, score12: @answer.score12, score13: @answer.score13, score14: @answer.score14, score15: @answer.score15, score16: @answer.score16, score17: @answer.score17, score18: @answer.score18, score19: @answer.score19, score1: @answer.score1, score20: @answer.score20, score21: @answer.score21, score22: @answer.score22, score23: @answer.score23, score24: @answer.score24, score25: @answer.score25, score26: @answer.score26, score27: @answer.score27, score28: @answer.score28, score29: @answer.score29, score2: @answer.score2, score30: @answer.score30, score31: @answer.score31, score32: @answer.score32, score33: @answer.score33, score34: @answer.score34, score35: @answer.score35, score36: @answer.score36, score37: @answer.score37, score38: @answer.score38, score39: @answer.score39, score3: @answer.score3, score40: @answer.score40, score4: @answer.score4, score5: @answer.score5, score6: @answer.score6, score7: @answer.score7, score8: @answer.score8, score9: @answer.score9 }
    end

    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should show answer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer" do
    patch :update, id: @answer, answer: { score10: @answer.score10, score11: @answer.score11, score12: @answer.score12, score13: @answer.score13, score14: @answer.score14, score15: @answer.score15, score16: @answer.score16, score17: @answer.score17, score18: @answer.score18, score19: @answer.score19, score1: @answer.score1, score20: @answer.score20, score21: @answer.score21, score22: @answer.score22, score23: @answer.score23, score24: @answer.score24, score25: @answer.score25, score26: @answer.score26, score27: @answer.score27, score28: @answer.score28, score29: @answer.score29, score2: @answer.score2, score30: @answer.score30, score31: @answer.score31, score32: @answer.score32, score33: @answer.score33, score34: @answer.score34, score35: @answer.score35, score36: @answer.score36, score37: @answer.score37, score38: @answer.score38, score39: @answer.score39, score3: @answer.score3, score40: @answer.score40, score4: @answer.score4, score5: @answer.score5, score6: @answer.score6, score7: @answer.score7, score8: @answer.score8, score9: @answer.score9 }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
