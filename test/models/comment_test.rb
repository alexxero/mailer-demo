require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without content" do
    comment = Comment.new(content: '')
    assert_not comment.save
  end
end
