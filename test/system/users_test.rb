require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Documento", with: @user.documento
    fill_in "Email", with: @user.email
    fill_in "Endereco", with: @user.endereco
    fill_in "Mae", with: @user.mae
    fill_in "Nome", with: @user.nome
    fill_in "Pai", with: @user.pai
    fill_in "Telefone", with: @user.telefone
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Documento", with: @user.documento
    fill_in "Email", with: @user.email
    fill_in "Endereco", with: @user.endereco
    fill_in "Mae", with: @user.mae
    fill_in "Nome", with: @user.nome
    fill_in "Pai", with: @user.pai
    fill_in "Telefone", with: @user.telefone
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
