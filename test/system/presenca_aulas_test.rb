require "application_system_test_case"

class PresencaAulasTest < ApplicationSystemTestCase
  setup do
    @presenca_aula = presenca_aulas(:one)
  end

  test "visiting the index" do
    visit presenca_aulas_url
    assert_selector "h1", text: "Presenca Aulas"
  end

  test "creating a Presenca aula" do
    visit presenca_aulas_url
    click_on "New Presenca Aula"

    fill_in "Data", with: @presenca_aula.data
    fill_in "Nome", with: @presenca_aula.nome
    fill_in "Numero faltas", with: @presenca_aula.numero_faltas
    click_on "Create Presenca aula"

    assert_text "Presenca aula was successfully created"
    click_on "Back"
  end

  test "updating a Presenca aula" do
    visit presenca_aulas_url
    click_on "Edit", match: :first

    fill_in "Data", with: @presenca_aula.data
    fill_in "Nome", with: @presenca_aula.nome
    fill_in "Numero faltas", with: @presenca_aula.numero_faltas
    click_on "Update Presenca aula"

    assert_text "Presenca aula was successfully updated"
    click_on "Back"
  end

  test "destroying a Presenca aula" do
    visit presenca_aulas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presenca aula was successfully destroyed"
  end
end
