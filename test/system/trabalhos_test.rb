require "application_system_test_case"

class TrabalhosTest < ApplicationSystemTestCase
  setup do
    @trabalho = trabalhos(:one)
  end

  test "visiting the index" do
    visit trabalhos_url
    assert_selector "h1", text: "Trabalhos"
  end

  test "creating a Trabalho" do
    visit trabalhos_url
    click_on "New Trabalho"

    fill_in "Data de entrega", with: @trabalho.data_de_entrega
    fill_in "Descricao", with: @trabalho.descricao
    fill_in "Disciplina", with: @trabalho.disciplina
    click_on "Create Trabalho"

    assert_text "Trabalho was successfully created"
    click_on "Back"
  end

  test "updating a Trabalho" do
    visit trabalhos_url
    click_on "Edit", match: :first

    fill_in "Data de entrega", with: @trabalho.data_de_entrega
    fill_in "Descricao", with: @trabalho.descricao
    fill_in "Disciplina", with: @trabalho.disciplina
    click_on "Update Trabalho"

    assert_text "Trabalho was successfully updated"
    click_on "Back"
  end

  test "destroying a Trabalho" do
    visit trabalhos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trabalho was successfully destroyed"
  end
end
