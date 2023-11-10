require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:language) do
    Language.new(name: "Italian")
  end

  let(:post) do
     Post.new(title: "My first title", body: "Something really interesting about the topic",
              user_id: 1, language: language)
  end

  it 'belongs to a language' do
    expect(post.language.name).to eq("Italian")
  end

  it 'has a title' do
    expect(post.title).to eq("My first title")
  end

  it 'has a body' do
    expect(post.body).to eq("Something really interesting about the topic")
  end
end
