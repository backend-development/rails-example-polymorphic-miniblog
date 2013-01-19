require 'test_helper'

class LinkAttachmentTest < ActiveSupport::TestCase
  test "can create" do
    l = LinkAttachment.new
    l.url = "http://railscasts.com"
    l.save
    assert !l.nil?
  end
end
