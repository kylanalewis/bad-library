require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "Title",
      author: "Author",
      price: '2.5',
      date: '1998-10-10'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/1998-10-10/)
  end
end
