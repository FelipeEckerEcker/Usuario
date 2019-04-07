require 'test_helper'

class DisciplinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disciplina = disciplinas(:one)
  end

  test "should get index" do
    get disciplinas_url
    assert_response :success
  end

  test "should get new" do
    get new_disciplina_url
    assert_response :success
  end

  test "should create disciplina" do
    assert_difference('Disciplina.count') do
      post disciplinas_url, params: { disciplina: { atividades: @disciplina.atividades, nota: @disciplina.nota, notasProvaLivro: @disciplina.notasProvaLivro, notasTrabalho: @disciplina.notasTrabalho, presenca: @disciplina.presenca } }
    end

    assert_redirected_to disciplina_url(Disciplina.last)
  end

  test "should show disciplina" do
    get disciplina_url(@disciplina)
    assert_response :success
  end

  test "should get edit" do
    get edit_disciplina_url(@disciplina)
    assert_response :success
  end

  test "should update disciplina" do
    patch disciplina_url(@disciplina), params: { disciplina: { atividades: @disciplina.atividades, nota: @disciplina.nota, notasProvaLivro: @disciplina.notasProvaLivro, notasTrabalho: @disciplina.notasTrabalho, presenca: @disciplina.presenca } }
    assert_redirected_to disciplina_url(@disciplina)
  end

  test "should destroy disciplina" do
    assert_difference('Disciplina.count', -1) do
      delete disciplina_url(@disciplina)
    end

    assert_redirected_to disciplinas_url
  end
end
