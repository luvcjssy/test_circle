require 'rails_helper'

feature 'Can view individual posts' do
  background do
    post = create :post
    user = create :user

    sign_in_with user
  end
  scenario 'Can click and view a single post' do
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    # expect(page.current_path).to eq(post_path(post))
    expect(page).to have_content('Edit Post')
  end
end
