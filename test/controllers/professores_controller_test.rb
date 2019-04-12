require 'test_helper'

class ProfessoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor = professores(:one)
  end

  test "should get index" do
    get professores_url
    assert_response :success
  end

  test "should get new" do
    get new_professor_url
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
<<<<<<< HEAD
      post professores_url, params: { professor: { email: @professor.email, endereco: @professor.endereco, nome: @professor.nome, telefone: @professor.telefone } }
=======
      post professores_url, params: { professor: { documento: @professor.documento, email: @professor.email, endereco: @professor.endereco, nome: @professor.nome, telefone: @professor.telefone } }
>>>>>>> d99b35d016db3527669868ae5897ce7e3a71e111
    end

    assert_redirected_to professor_url(Professor.last)
  end

  test "should show professor" do
    get professor_url(@professor)
    assert_response :success
  end

  test "should get edit" do
    get edit_professor_url(@professor)
    assert_response :success
  end

  test "should update professor" do
<<<<<<< HEAD
    patch professor_url(@professor), params: { professor: { email: @professor.email, endereco: @professor.endereco, nome: @professor.nome, telefone: @professor.telefone } }
=======
    patch professor_url(@professor), params: { professor: { documento: @professor.documento, email: @professor.email, endereco: @professor.endereco, nome: @professor.nome, telefone: @professor.telefone } }
>>>>>>> d99b35d016db3527669868ae5897ce7e3a71e111
    assert_redirected_to professor_url(@professor)
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete professor_url(@professor)
    end

    assert_redirected_to professores_url
  end
end
