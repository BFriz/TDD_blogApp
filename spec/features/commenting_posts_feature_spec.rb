require 'rails_helper'

describe 'Commenting' do 

  before do 
    Post.create(author: 'Titsmagee', title: 'Swimming', content: 'It is really easy')
  end

  it 'can add a comment to a post' do
    visit posts_path
    click_link 'Titsmagee'
    click_link 'Add review'

    # fill_in 'Content', with: 'where is this text going to go?' select 'Titsmagee', from: 'Name'
    # click_button 'Submit'

    expect(page).to have_content 'Titsmagee'
  end

end