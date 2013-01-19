require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "can create" do
    a = Article.new
    a.title = "empty article"
    a.save
    assert !a.nil?
  end
end
