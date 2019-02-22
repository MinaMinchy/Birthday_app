feature 'Name' do
  scenario 'putting the name' do
    sign_in_and_content
    click_button "Go"
    expect(page).to have_content "Happy birthday Amina!"

  end
end
