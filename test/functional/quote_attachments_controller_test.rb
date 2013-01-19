require 'test_helper'

class QuoteAttachmentsControllerTest < ActionController::TestCase
  setup do
    @quote_attachment = quote_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quote_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote_attachment" do
    assert_difference('QuoteAttachment.count') do
      post :create, quote_attachment: { author: @quote_attachment.author, text: @quote_attachment.text, url: @quote_attachment.url }
    end

    assert_redirected_to quote_attachment_path(assigns(:quote_attachment))
  end

  test "should show quote_attachment" do
    get :show, id: @quote_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote_attachment
    assert_response :success
  end

  test "should update quote_attachment" do
    put :update, id: @quote_attachment, quote_attachment: { author: @quote_attachment.author, text: @quote_attachment.text, url: @quote_attachment.url }
    assert_redirected_to quote_attachment_path(assigns(:quote_attachment))
  end

  test "should destroy quote_attachment" do
    assert_difference('QuoteAttachment.count', -1) do
      delete :destroy, id: @quote_attachment
    end

    assert_redirected_to quote_attachments_path
  end
end
