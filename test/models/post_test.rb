require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without content" do
    post = Post.new()
    assert_not post.save
  end
end
