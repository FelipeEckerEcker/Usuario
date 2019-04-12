require "application_system_test_case"

class AtividadesExtrasTest < ApplicationSystemTestCase
  setup do
    @atividades_extra = atividades_extras(:one)
  end

  test "visiting the index" do
    visit atividades_extras_url
    assert_selector "h1", text: "Atividades Extras"
  end

  test "creating a Atividades extra" do
    visit atividades_extras_url
    click_on "New Atividades Extra"

    fill_in "Curso", with: @atividades_extra.curso
    fill_in "Data", with: @atividades_extra.data
    fill_in "Data entrega", with: @atividades_extra.data_entrega
    fill_in "Disciplina", with: @atividades_extra.disciplina
    fill_in "Nome", with: @atividades_extra.nome
    click_on "Create Atividades extra"

    assert_text "Atividades extra was successfully created"
    click_on "Back"
  end

  test "updating a Atividades extra" do
    visit atividades_extras_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @atividades_extra.curso
    fill_in "Data", with: @atividades_extra.data
    fill_in "Data entrega", with: @atividades_extra.data_entrega
    fill_in "Disciplina", with: @atividades_extra.disciplina
    fill_in "Nome", with: @atividades_extra.nome
    click_on "Update Atividades extra"

    assert_text "Atividades extra was successfully updated"
    click_on "Back"
  end

  test "destroying a Atividades extra" do
    visit atividades_extras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atividades extra was successfully destroyed"
  end
end
