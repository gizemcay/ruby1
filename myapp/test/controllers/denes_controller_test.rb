require 'test_helper'

class DenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dene = denes(:one)
  end

  test "should get index" do
    get denes_url
    assert_response :success
  end

  test "should get new" do
    get new_dene_url
    assert_response :success
  end

  test "should create dene" do
    assert_difference('Dene.count') do
      post denes_url, params: { dene: { düşünceler: @dene.düşünceler, isim: @dene.isim, soyad: @dene.soyad, yas: @dene.yas } }
    end

    assert_redirected_to dene_url(Dene.last)
  end

  test "should show dene" do
    get dene_url(@dene)
    assert_response :success
  end

  test "should get edit" do
    get edit_dene_url(@dene)
    assert_response :success
  end

  test "should update dene" do
    patch dene_url(@dene), params: { dene: { düşünceler: @dene.düşünceler, isim: @dene.isim, soyad: @dene.soyad, yas: @dene.yas } }
    assert_redirected_to dene_url(@dene)
  end

  test "should destroy dene" do
    assert_difference('Dene.count', -1) do
      delete dene_url(@dene)
    end

    assert_redirected_to denes_url
  end
end
