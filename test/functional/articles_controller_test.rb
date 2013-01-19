require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
    @a2 = articles(:two)
  end

  test "should have 3 articles to test with" do
    assert @article.attachment.nil?
    assert !@a2.attachment.nil?
    assert @a2.attachment_type == "LinkAttachment"
    assert @a2.attachment.url == "http://railscasts.com/"
    a3 = articles(:three)
    assert !a3.attachment.nil?
    assert a3.attachment_type == "QuoteAttachment"
    assert a3.attachment.url ==  "http://en.wikiquote.org/wiki/Larry_wall#Other"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create (empty) article" do
    assert_difference('Article.count') do
      post :create, article: { title: @article.title }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should create article with link attachment" do
    assert_difference('Article.count') do
      post :create, article: { title: @article.title, attachment_type: "LinkAttachment", attachment_attributes: { url: "http://bla" } }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show (empty) article" do
    get :show, id: @article
    assert_response :success
  end

  test "should show article with link attachment" do
    get :show, id: @a2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    put :update, id: @article, article: { title: @article.title }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should update article and link attachment" do
    put :update, id: @a2, article: { title: @a2.title, attachment_type: "LinkAttachment", attachment_attributes: { url: "http://blubb", id: @a2.attachment_id } }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
  test "should destroy article and link attachment" do
    assert_difference('LinkAttachment.count', -1) do
      delete :destroy, id: @a2
    end

    assert_redirected_to articles_path
  end
end
