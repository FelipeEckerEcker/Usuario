require 'test_helper'

class PresencaAulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presenca_aula = presenca_aulas(:one)
  end

  test "should get index" do
    get presenca_aulas_url
    assert_response :success
  end

  test "should get new" do
    get new_presenca_aula_url
    assert_response :success
  end

  test "should create presenca_aula" do
    assert_difference('PresencaAula.count') do
      post presenca_aulas_url, params: { presenca_aula: { data: @presenca_aula.data, nome: @presenca_aula.nome, numero_faltas: @presenca_aula.numero_faltas } }
    end

    assert_redirected_to presenca_aula_url(PresencaAula.last)
  end

  test "should show presenca_aula" do
    get presenca_aula_url(@presenca_aula)
    assert_response :success
  end

  test "should get edit" do
    get edit_presenca_aula_url(@presenca_aula)
    assert_response :success
  end

  test "should update presenca_aula" do
    patch presenca_aula_url(@presenca_aula), params: { presenca_aula: { data: @presenca_aula.data, nome: @presenca_aula.nome, numero_faltas: @presenca_aula.numero_faltas } }
    assert_redirected_to presenca_aula_url(@presenca_aula)
  end

  test "should destroy presenca_aula" do
    assert_difference('PresencaAula.count', -1) do
      delete presenca_aula_url(@presenca_aula)
    end

    assert_redirected_to presenca_aulas_url
  end
end
