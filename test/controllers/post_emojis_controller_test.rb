require "test_helper"

class PostEmojisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_emoji = post_emojis(:one)
  end

  test "should get index" do
    get post_emojis_url
    assert_response :success
  end

  test "should get new" do
    get new_post_emoji_url
    assert_response :success
  end

  test "should create post_emoji" do
    assert_difference("PostEmoji.count") do
      post post_emojis_url, params: { post_emoji: { emoji_id: @post_emoji.emoji_id, post_id: @post_emoji.post_id } }
    end

    assert_redirected_to post_emoji_url(PostEmoji.last)
  end

  test "should show post_emoji" do
    get post_emoji_url(@post_emoji)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_emoji_url(@post_emoji)
    assert_response :success
  end

  test "should update post_emoji" do
    patch post_emoji_url(@post_emoji), params: { post_emoji: { emoji_id: @post_emoji.emoji_id, post_id: @post_emoji.post_id } }
    assert_redirected_to post_emoji_url(@post_emoji)
  end

  test "should destroy post_emoji" do
    assert_difference("PostEmoji.count", -1) do
      delete post_emoji_url(@post_emoji)
    end

    assert_redirected_to post_emojis_url
  end
end
