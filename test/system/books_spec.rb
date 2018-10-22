require "rails_helper"
#Means load the rails helper

RSpec.describe "Books", type: :system do
  
  it "has an index page of all books" do
    first_book = create(:book)
    second_book = creare(:book)

    visit "/"
    #where ever your books are, visit that route. If home page, reference home page instead of root (/)

    expect(page).to have_text(first_book.title)
    expect(page).to have_tet(second_book.title)
  end  
end