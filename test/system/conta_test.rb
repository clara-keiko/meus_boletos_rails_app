require "application_system_test_case"

class ContaTest < ApplicationSystemTestCase
  setup do
    @conta = conta(:one)
  end

  test "visiting the index" do
    visit conta_url
    assert_selector "h1", text: "Conta"
  end

  test "should create conta" do
    visit conta_url
    click_on "New conta"

    fill_in "Data de vencimento", with: @conta.data_de_vencimento
    fill_in "Link para o boleto", with: @conta.link_para_o_boleto
    fill_in "Nome", with: @conta.nome
    fill_in "Obs", with: @conta.obs
    fill_in "Senha", with: @conta.senha
    fill_in "Usuario", with: @conta.usuario
    click_on "Create conta"

    assert_text "conta was successfully created"
    click_on "Back"
  end

  test "should update conta" do
    visit conta_url(@conta)
    click_on "Edit this conta", match: :first

    fill_in "Data de vencimento", with: @conta.data_de_vencimento
    fill_in "Link para o boleto", with: @conta.link_para_o_boleto
    fill_in "Nome", with: @conta.nome
    fill_in "Obs", with: @conta.obs
    fill_in "Senha", with: @conta.senha
    fill_in "Usuario", with: @conta.usuario
    click_on "Update conta"

    assert_text "conta was successfully updated"
    click_on "Back"
  end

  test "should destroy conta" do
    visit conta_url(@conta)
    click_on "Destroy this conta", match: :first

    assert_text "conta was successfully destroyed"
  end
end
