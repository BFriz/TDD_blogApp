require 'rails_helper'

describe Post do

  it 'must have a author' do
    post = Post.new
    expect(post.valid?).to eq false
  end
end