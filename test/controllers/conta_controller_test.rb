require "test_helper"

class ContaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conta = conta(:one)
  end

  test "should get index" do
    get conta_url
    assert_response :success
  end

  test "should get new" do
    get new_conta_url
    assert_response :success
  end

  test "should create conta" do
    assert_difference("conta.count") do
      post conta_url, params: { conta: { data_de_vencimento: @conta.data_de_vencimento, link_para_o_boleto: @conta.link_para_o_boleto, nome: @conta.nome, obs: @conta.obs, senha: @conta.senha, usuario: @conta.usuario } }
    end

    assert_redirected_to conta_url(conta.last)
  end

  test "should show conta" do
    get conta_url(@conta)
    assert_response :success
  end

  test "should get edit" do
    get edit_conta_url(@conta)
    assert_response :success
  end

  test "should update conta" do
    patch conta_url(@conta), params: { conta: { data_de_vencimento: @conta.data_de_vencimento, link_para_o_boleto: @conta.link_para_o_boleto, nome: @conta.nome, obs: @conta.obs, senha: @conta.senha, usuario: @conta.usuario } }
    assert_redirected_to conta_url(@conta)
  end

  test "should destroy conta" do
    assert_difference("conta.count", -1) do
      delete conta_url(@conta)
    end

    assert_redirected_to conta_url
  end
end
