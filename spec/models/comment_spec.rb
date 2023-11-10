require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:language) do
    Language.new(name: "Italian")
  end

  let(:user) do
    User.new(email: "luca@luca.me", password: "123456")
  end

  let(:post) do
    Post.new(title: "My first title", body: "Something really interesting about the topic",
             user_id: 1, language: language)
  end

  let(:parent_comment) do
    Comment.new(body: "Really good", user: user, commentable: post)
  end

  let(:comment_on_comment) do
    Comment.new(body: "Very well", user_id: user.id, commentable: parent_comment)
  end

  it 'has a body' do
    expect(parent_comment.body).to eq("Really good")
    expect(comment_on_comment.body).to eq("Very well")
  end

  it 'belongs to a user' do
    expect(parent_comment.user).to eq(user)
  end

end
