require 'test_helper'

class AtividadesExtrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atividades_extra = atividades_extras(:one)
  end

  test "should get index" do
    get atividades_extras_url
    assert_response :success
  end

  test "should get new" do
    get new_atividades_extra_url
    assert_response :success
  end

  test "should create atividades_extra" do
    assert_difference('AtividadesExtra.count') do
      post atividades_extras_url, params: { atividades_extra: { curso: @atividades_extra.curso, data: @atividades_extra.data, data_entrega: @atividades_extra.data_entrega, disciplina: @atividades_extra.disciplina, nome: @atividades_extra.nome } }
    end

    assert_redirected_to atividades_extra_url(AtividadesExtra.last)
  end

  test "should show atividades_extra" do
    get atividades_extra_url(@atividades_extra)
    assert_response :success
  end

  test "should get edit" do
    get edit_atividades_extra_url(@atividades_extra)
    assert_response :success
  end

  test "should update atividades_extra" do
    patch atividades_extra_url(@atividades_extra), params: { atividades_extra: { curso: @atividades_extra.curso, data: @atividades_extra.data, data_entrega: @atividades_extra.data_entrega, disciplina: @atividades_extra.disciplina, nome: @atividades_extra.nome } }
    assert_redirected_to atividades_extra_url(@atividades_extra)
  end

  test "should destroy atividades_extra" do
    assert_difference('AtividadesExtra.count', -1) do
      delete atividades_extra_url(@atividades_extra)
    end

    assert_redirected_to atividades_extras_url
  end
end
