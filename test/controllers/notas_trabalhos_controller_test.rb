require 'test_helper'

class NotasTrabalhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notas_trabalho = notas_trabalhos(:one)
  end

  test "should get index" do
    get notas_trabalhos_url
    assert_response :success
  end

  test "should get new" do
    get new_notas_trabalho_url
    assert_response :success
  end

  test "should create notas_trabalho" do
    assert_difference('NotasTrabalho.count') do
      post notas_trabalhos_url, params: { notas_trabalho: { curso: @notas_trabalho.curso, data: @notas_trabalho.data, disciplina: @notas_trabalho.disciplina, nome: @notas_trabalho.nome, nota_aluno: @notas_trabalho.nota_aluno } }
    end

    assert_redirected_to notas_trabalho_url(NotasTrabalho.last)
  end

  test "should show notas_trabalho" do
    get notas_trabalho_url(@notas_trabalho)
    assert_response :success
  end

  test "should get edit" do
    get edit_notas_trabalho_url(@notas_trabalho)
    assert_response :success
  end

  test "should update notas_trabalho" do
    patch notas_trabalho_url(@notas_trabalho), params: { notas_trabalho: { curso: @notas_trabalho.curso, data: @notas_trabalho.data, disciplina: @notas_trabalho.disciplina, nome: @notas_trabalho.nome, nota_aluno: @notas_trabalho.nota_aluno } }
    assert_redirected_to notas_trabalho_url(@notas_trabalho)
  end

  test "should destroy notas_trabalho" do
    assert_difference('NotasTrabalho.count', -1) do
      delete notas_trabalho_url(@notas_trabalho)
    end

    assert_redirected_to notas_trabalhos_url
  end
end
