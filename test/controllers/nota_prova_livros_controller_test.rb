require 'test_helper'

class NotaProvaLivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nota_prova_livro = nota_prova_livros(:one)
  end

  test "should get index" do
    get nota_prova_livros_url
    assert_response :success
  end

  test "should get new" do
    get new_nota_prova_livro_url
    assert_response :success
  end

  test "should create nota_prova_livro" do
    assert_difference('NotaProvaLivro.count') do
      post nota_prova_livros_url, params: { nota_prova_livro: { curso: @nota_prova_livro.curso, data: @nota_prova_livro.data, nome: @nota_prova_livro.nome, nota_aluno: @nota_prova_livro.nota_aluno } }
    end

    assert_redirected_to nota_prova_livro_url(NotaProvaLivro.last)
  end

  test "should show nota_prova_livro" do
    get nota_prova_livro_url(@nota_prova_livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_nota_prova_livro_url(@nota_prova_livro)
    assert_response :success
  end

  test "should update nota_prova_livro" do
    patch nota_prova_livro_url(@nota_prova_livro), params: { nota_prova_livro: { curso: @nota_prova_livro.curso, data: @nota_prova_livro.data, nome: @nota_prova_livro.nome, nota_aluno: @nota_prova_livro.nota_aluno } }
    assert_redirected_to nota_prova_livro_url(@nota_prova_livro)
  end

  test "should destroy nota_prova_livro" do
    assert_difference('NotaProvaLivro.count', -1) do
      delete nota_prova_livro_url(@nota_prova_livro)
    end

    assert_redirected_to nota_prova_livros_url
  end
end
