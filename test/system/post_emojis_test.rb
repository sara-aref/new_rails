require "application_system_test_case"

class PostEmojisTest < ApplicationSystemTestCase
  setup do
    @post_emoji = post_emojis(:one)
  end

  test "visiting the index" do
    visit post_emojis_url
    assert_selector "h1", text: "Post emojis"
  end

  test "should create post emoji" do
    visit post_emojis_url
    click_on "New post emoji"

    fill_in "Emoji", with: @post_emoji.emoji_id
    fill_in "Post", with: @post_emoji.post_id
    click_on "Create Post emoji"

    assert_text "Post emoji was successfully created"
    click_on "Back"
  end

  test "should update Post emoji" do
    visit post_emoji_url(@post_emoji)
    click_on "Edit this post emoji", match: :first

    fill_in "Emoji", with: @post_emoji.emoji_id
    fill_in "Post", with: @post_emoji.post_id
    click_on "Update Post emoji"

    assert_text "Post emoji was successfully updated"
    click_on "Back"
  end

  test "should destroy Post emoji" do
    visit post_emoji_url(@post_emoji)
    click_on "Destroy this post emoji", match: :first

    assert_text "Post emoji was successfully destroyed"
  end
end
