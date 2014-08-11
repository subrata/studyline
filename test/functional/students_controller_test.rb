require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { address: @student.address, cexam: @student.cexam, coaching: @student.coaching, course: @student.course, csalary: @student.csalary, email: @student.email, esalary: @student.esalary, experience: @student.experience, gender: @student.gender, gurdian: @student.gurdian, name: @student.name, pcompany: @student.pcompany, phone: @student.phone, place: @student.place, qualification: @student.qualification, registration_type: @student.registration_type, state: @student.state }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { address: @student.address, cexam: @student.cexam, coaching: @student.coaching, course: @student.course, csalary: @student.csalary, email: @student.email, esalary: @student.esalary, experience: @student.experience, gender: @student.gender, gurdian: @student.gurdian, name: @student.name, pcompany: @student.pcompany, phone: @student.phone, place: @student.place, qualification: @student.qualification, registration_type: @student.registration_type, state: @student.state }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
