require 'test_helper'

class NotaAlunosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nota_aluno = nota_alunos(:one)
  end

  test "should get index" do
    get nota_alunos_url
    assert_response :success
  end

  test "should get new" do
    get new_nota_aluno_url
    assert_response :success
  end

  test "should create nota_aluno" do
    assert_difference('NotaAluno.count') do
      post nota_alunos_url, params: { nota_aluno: { data_prova: @nota_aluno.data_prova, nome_do_aluno: @nota_aluno.nome_do_aluno, nota_g1: @nota_aluno.nota_g1, nota_g2: @nota_aluno.nota_g2, sub_g1: @nota_aluno.sub_g1, sub_g2: @nota_aluno.sub_g2 } }
    end

    assert_redirected_to nota_aluno_url(NotaAluno.last)
  end

  test "should show nota_aluno" do
    get nota_aluno_url(@nota_aluno)
    assert_response :success
  end

  test "should get edit" do
    get edit_nota_aluno_url(@nota_aluno)
    assert_response :success
  end

  test "should update nota_aluno" do
    patch nota_aluno_url(@nota_aluno), params: { nota_aluno: { data_prova: @nota_aluno.data_prova, nome_do_aluno: @nota_aluno.nome_do_aluno, nota_g1: @nota_aluno.nota_g1, nota_g2: @nota_aluno.nota_g2, sub_g1: @nota_aluno.sub_g1, sub_g2: @nota_aluno.sub_g2 } }
    assert_redirected_to nota_aluno_url(@nota_aluno)
  end

  test "should destroy nota_aluno" do
    assert_difference('NotaAluno.count', -1) do
      delete nota_aluno_url(@nota_aluno)
    end

    assert_redirected_to nota_alunos_url
  end
end
