require 'test_helper'

class FacturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factura = facturas(:one)
  end

  test "should get index" do
    get facturas_url, as: :json
    assert_response :success
  end

  test "should create factura" do
    assert_difference('Factura.count') do
      post facturas_url, params: { factura: { Cantidad: @factura.Cantidad, Detalle: @factura.Detalle, NoFactura: @factura.NoFactura, PorcIva: @factura.PorcIva, Precio: @factura.Precio } }, as: :json
    end

    assert_response 201
  end

  test "should show factura" do
    get factura_url(@factura), as: :json
    assert_response :success
  end

  test "should update factura" do
    patch factura_url(@factura), params: { factura: { Cantidad: @factura.Cantidad, Detalle: @factura.Detalle, NoFactura: @factura.NoFactura, PorcIva: @factura.PorcIva, Precio: @factura.Precio } }, as: :json
    assert_response 200
  end

  test "should destroy factura" do
    assert_difference('Factura.count', -1) do
      delete factura_url(@factura), as: :json
    end

    assert_response 204
  end
end
