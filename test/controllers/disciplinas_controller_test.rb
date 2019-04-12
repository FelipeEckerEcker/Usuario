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
<<<<<<< HEAD
      post disciplinas_url, params: { disciplina: { atividadesExtra: @disciplina.atividadesExtra, notaAluno: @disciplina.notaAluno, notaProvaLivro: @disciplina.notaProvaLivro, notaTrabalho: @disciplina.notaTrabalho, presencaAula: @disciplina.presencaAula } }
=======
      post disciplinas_url, params: { disciplina: { Curso: @disciplina.Curso, Nome: @disciplina.Nome } }
>>>>>>> 61b637a031b1e2c77fe2e9d5250aeb60b9b5427d
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
<<<<<<< HEAD
    patch disciplina_url(@disciplina), params: { disciplina: { atividadesExtra: @disciplina.atividadesExtra, notaAluno: @disciplina.notaAluno, notaProvaLivro: @disciplina.notaProvaLivro, notaTrabalho: @disciplina.notaTrabalho, presencaAula: @disciplina.presencaAula } }
=======
    patch disciplina_url(@disciplina), params: { disciplina: { Curso: @disciplina.Curso, Nome: @disciplina.Nome } }
>>>>>>> 61b637a031b1e2c77fe2e9d5250aeb60b9b5427d
    assert_redirected_to disciplina_url(@disciplina)
  end

  test "should destroy disciplina" do
    assert_difference('Disciplina.count', -1) do
      delete disciplina_url(@disciplina)
    end

    assert_redirected_to disciplinas_url
  end
end
