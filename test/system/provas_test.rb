require "application_system_test_case"

class ProvasTest < ApplicationSystemTestCase
  setup do
    @prova = provas(:one)
  end

  test "visiting the index" do
    visit provas_url
    assert_selector "h1", text: "Provas"
  end

  test "creating a Prova" do
    visit provas_url
    click_on "New Prova"

    fill_in "Curso", with: @prova.curso
    fill_in "Data", with: @prova.data
    fill_in "Disciplina", with: @prova.disciplina
    fill_in "Nome", with: @prova.nome
    fill_in "Nota aluno", with: @prova.nota_aluno
    click_on "Create Prova"

    assert_text "Prova was successfully created"
    click_on "Back"
  end

  test "updating a Prova" do
    visit provas_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @prova.curso
    fill_in "Data", with: @prova.data
    fill_in "Disciplina", with: @prova.disciplina
    fill_in "Nome", with: @prova.nome
    fill_in "Nota aluno", with: @prova.nota_aluno
    click_on "Update Prova"

    assert_text "Prova was successfully updated"
    click_on "Back"
  end

  test "destroying a Prova" do
    visit provas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prova was successfully destroyed"
  end
end
