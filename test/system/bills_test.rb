require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "should create bill" do
    visit bills_url
    click_on "New bill"

    fill_in "Data de vencimento", with: @bill.data_de_vencimento
    fill_in "Link para o boleto", with: @bill.link_para_o_boleto
    fill_in "Nome", with: @bill.nome
    fill_in "Obs", with: @bill.obs
    fill_in "Senha", with: @bill.senha
    fill_in "Usuario", with: @bill.usuario
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "should update Bill" do
    visit bill_url(@bill)
    click_on "Edit this bill", match: :first

    fill_in "Data de vencimento", with: @bill.data_de_vencimento
    fill_in "Link para o boleto", with: @bill.link_para_o_boleto
    fill_in "Nome", with: @bill.nome
    fill_in "Obs", with: @bill.obs
    fill_in "Senha", with: @bill.senha
    fill_in "Usuario", with: @bill.usuario
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "should destroy Bill" do
    visit bill_url(@bill)
    click_on "Destroy this bill", match: :first

    assert_text "Bill was successfully destroyed"
  end
end
