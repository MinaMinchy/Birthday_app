
  def sign_in_and_content
    visit('/')
    fill_in(:name, with: "Amina")
    fill_in(:day, with: "15")
    select 'September', from: 'month'


  end
