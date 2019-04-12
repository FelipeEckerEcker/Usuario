require "application_system_test_case"

class DisciplinasTest < ApplicationSystemTestCase
  setup do
    @disciplina = disciplinas(:one)
  end

  test "visiting the index" do
    visit disciplinas_url
    assert_selector "h1", text: "Disciplinas"
  end

  test "creating a Disciplina" do
    visit disciplinas_url
    click_on "New Disciplina"

<<<<<<< HEAD
    fill_in "Atividadesextra", with: @disciplina.atividadesExtra
    fill_in "Notaaluno", with: @disciplina.notaAluno
    fill_in "Notaprovalivro", with: @disciplina.notaProvaLivro
    fill_in "Notatrabalho", with: @disciplina.notaTrabalho
    fill_in "Presencaaula", with: @disciplina.presencaAula
=======
    fill_in "Curso", with: @disciplina.Curso
    fill_in "Nome", with: @disciplina.Nome
>>>>>>> 61b637a031b1e2c77fe2e9d5250aeb60b9b5427d
    click_on "Create Disciplina"

    assert_text "Disciplina was successfully created"
    click_on "Back"
  end

  test "updating a Disciplina" do
    visit disciplinas_url
    click_on "Edit", match: :first

<<<<<<< HEAD
    fill_in "Atividadesextra", with: @disciplina.atividadesExtra
    fill_in "Notaaluno", with: @disciplina.notaAluno
    fill_in "Notaprovalivro", with: @disciplina.notaProvaLivro
    fill_in "Notatrabalho", with: @disciplina.notaTrabalho
    fill_in "Presencaaula", with: @disciplina.presencaAula
=======
    fill_in "Curso", with: @disciplina.Curso
    fill_in "Nome", with: @disciplina.Nome
>>>>>>> 61b637a031b1e2c77fe2e9d5250aeb60b9b5427d
    click_on "Update Disciplina"

    assert_text "Disciplina was successfully updated"
    click_on "Back"
  end

  test "destroying a Disciplina" do
    visit disciplinas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disciplina was successfully destroyed"
  end
end
