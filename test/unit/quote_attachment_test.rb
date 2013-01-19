require 'test_helper'

class QuoteAttachmentTest < ActiveSupport::TestCase
  test "can create" do
    q = QuoteAttachment.new
    q.text = "The three chief virtues of a programmer are: Laziness, Impatience and Hubris."
    q.author = "Larry Wall"
    q.url = "http://en.wikiquote.org/wiki/Larry_wall#Other"
    q.save
    assert !q.nil?
  end
end
