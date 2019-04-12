require 'test_helper'

class TrabalhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabalho = trabalhos(:one)
  end

  test "should get index" do
    get trabalhos_url
    assert_response :success
  end

  test "should get new" do
    get new_trabalho_url
    assert_response :success
  end

  test "should create trabalho" do
    assert_difference('Trabalho.count') do
      post trabalhos_url, params: { trabalho: { data_de_entrega: @trabalho.data_de_entrega, descricao: @trabalho.descricao, disciplina: @trabalho.disciplina } }
    end

    assert_redirected_to trabalho_url(Trabalho.last)
  end

  test "should show trabalho" do
    get trabalho_url(@trabalho)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabalho_url(@trabalho)
    assert_response :success
  end

  test "should update trabalho" do
    patch trabalho_url(@trabalho), params: { trabalho: { data_de_entrega: @trabalho.data_de_entrega, descricao: @trabalho.descricao, disciplina: @trabalho.disciplina } }
    assert_redirected_to trabalho_url(@trabalho)
  end

  test "should destroy trabalho" do
    assert_difference('Trabalho.count', -1) do
      delete trabalho_url(@trabalho)
    end

    assert_redirected_to trabalhos_url
  end
end
