require "application_system_test_case"

class NotaProvaLivrosTest < ApplicationSystemTestCase
  setup do
    @nota_prova_livro = nota_prova_livros(:one)
  end

  test "visiting the index" do
    visit nota_prova_livros_url
    assert_selector "h1", text: "Nota Prova Livros"
  end

  test "creating a Nota prova livro" do
    visit nota_prova_livros_url
    click_on "New Nota Prova Livro"

    fill_in "Curso", with: @nota_prova_livro.curso
    fill_in "Data", with: @nota_prova_livro.data
    fill_in "Nome", with: @nota_prova_livro.nome
    fill_in "Nota aluno", with: @nota_prova_livro.nota_aluno
    click_on "Create Nota prova livro"

    assert_text "Nota prova livro was successfully created"
    click_on "Back"
  end

  test "updating a Nota prova livro" do
    visit nota_prova_livros_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @nota_prova_livro.curso
    fill_in "Data", with: @nota_prova_livro.data
    fill_in "Nome", with: @nota_prova_livro.nome
    fill_in "Nota aluno", with: @nota_prova_livro.nota_aluno
    click_on "Update Nota prova livro"

    assert_text "Nota prova livro was successfully updated"
    click_on "Back"
  end

  test "destroying a Nota prova livro" do
    visit nota_prova_livros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nota prova livro was successfully destroyed"
  end
end
