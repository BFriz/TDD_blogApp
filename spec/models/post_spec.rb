require 'rails_helper'

describe Post do

let(:don) { Post.new(author: 'Donkey Kong',
                      title: 'This shit bananananas',
                      content: 'Ill trade you a gram of crack for a pound of bananananas?') }

  it 'must have a author' do
    post = Post.new
    expect(post.valid?).to eq false
  end

  it 'must have a title' do
    post = Post.new(author: 'donkey')
    expect(post.valid?).to eq false
  end

  it 'must have content' do
    post = Post.new(author: 'donkey', title: 'hope')
    expect(post.valid?).to eq false
  end

  context 'has no content' do
    it 'should return a message saying no ratings' do
      expect(don.commentator).to eq 'No content!'  
    end
  end
  context 'one comment' do
    it 'should return the comments' do
      don.comments << Comment.new(name: 'Diddy Kong',  content: 'I got what cha need manggggg')
      expect(don.commentator).to eq 'I got what cha need manggggg'
    end
  end
  context 'multiple comments' do
    it 'should return all of the comments' do
      don.comments << Comment.new(name: 'Daisy Kong', content: 'Where have you been, Ive called you every day')
      don.comments << Comment.new(name: 'King Kong', content: 'hahahaha wanker')
      expect(don.commentator).to eq 'Where have you been, Ive called you every dayhahahaha wanker'
    end
  end



end