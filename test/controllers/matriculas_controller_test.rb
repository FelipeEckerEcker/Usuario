require 'test_helper'

class MatriculasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matricula = matriculas(:one)
  end

  test "should get index" do
    get matriculas_url
    assert_response :success
  end

  test "should get new" do
    get new_matricula_url
    assert_response :success
  end

  test "should create matricula" do
    assert_difference('Matricula.count') do
      post matriculas_url, params: { matricula: { cpf: @matricula.cpf, curso: @matricula.curso, data: @matricula.data, disciplina: @matricula.disciplina, endereco: @matricula.endereco, nome: @matricula.nome, ra: @matricula.ra } }
    end

    assert_redirected_to matricula_url(Matricula.last)
  end

  test "should show matricula" do
    get matricula_url(@matricula)
    assert_response :success
  end

  test "should get edit" do
    get edit_matricula_url(@matricula)
    assert_response :success
  end

  test "should update matricula" do
    patch matricula_url(@matricula), params: { matricula: { cpf: @matricula.cpf, curso: @matricula.curso, data: @matricula.data, disciplina: @matricula.disciplina, endereco: @matricula.endereco, nome: @matricula.nome, ra: @matricula.ra } }
    assert_redirected_to matricula_url(@matricula)
  end

  test "should destroy matricula" do
    assert_difference('Matricula.count', -1) do
      delete matricula_url(@matricula)
    end

    assert_redirected_to matriculas_url
  end
end
