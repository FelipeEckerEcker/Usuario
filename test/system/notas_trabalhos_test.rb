require "application_system_test_case"

class NotasTrabalhosTest < ApplicationSystemTestCase
  setup do
    @notas_trabalho = notas_trabalhos(:one)
  end

  test "visiting the index" do
    visit notas_trabalhos_url
    assert_selector "h1", text: "Notas Trabalhos"
  end

  test "creating a Notas trabalho" do
    visit notas_trabalhos_url
    click_on "New Notas Trabalho"

    fill_in "Curso", with: @notas_trabalho.curso
    fill_in "Data", with: @notas_trabalho.data
    fill_in "Disciplina", with: @notas_trabalho.disciplina
    fill_in "Nome", with: @notas_trabalho.nome
    fill_in "Nota aluno", with: @notas_trabalho.nota_aluno
    click_on "Create Notas trabalho"

    assert_text "Notas trabalho was successfully created"
    click_on "Back"
  end

  test "updating a Notas trabalho" do
    visit notas_trabalhos_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @notas_trabalho.curso
    fill_in "Data", with: @notas_trabalho.data
    fill_in "Disciplina", with: @notas_trabalho.disciplina
    fill_in "Nome", with: @notas_trabalho.nome
    fill_in "Nota aluno", with: @notas_trabalho.nota_aluno
    click_on "Update Notas trabalho"

    assert_text "Notas trabalho was successfully updated"
    click_on "Back"
  end

  test "destroying a Notas trabalho" do
    visit notas_trabalhos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notas trabalho was successfully destroyed"
  end
end
