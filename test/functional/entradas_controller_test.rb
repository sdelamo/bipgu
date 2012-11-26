require 'test_helper'

class EntradasControllerTest < ActionController::TestCase
  setup do
    @entrada = entradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrada" do
    assert_difference('Entrada.count') do
      post :create, entrada: { autor: @entrada.autor, descriptores: @entrada.descriptores, editorial: @entrada.editorial, fecha: @entrada.fecha, issn: @entrada.issn, lugar: @entrada.lugar, resumen: @entrada.resumen, titulo: @entrada.titulo, vaciado: @entrada.vaciado }
    end

    assert_redirected_to entrada_path(assigns(:entrada))
  end

  test "should show entrada" do
    get :show, id: @entrada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrada
    assert_response :success
  end

  test "should update entrada" do
    put :update, id: @entrada, entrada: { autor: @entrada.autor, descriptores: @entrada.descriptores, editorial: @entrada.editorial, fecha: @entrada.fecha, issn: @entrada.issn, lugar: @entrada.lugar, resumen: @entrada.resumen, titulo: @entrada.titulo, vaciado: @entrada.vaciado }
    assert_redirected_to entrada_path(assigns(:entrada))
  end

  test "should destroy entrada" do
    assert_difference('Entrada.count', -1) do
      delete :destroy, id: @entrada
    end

    assert_redirected_to entradas_path
  end
end
