require 'rails_helper'

RSpec.feature "comments", type: :feature do
  it 'fill the comment post with a text ' do
    before (:each) do
    	@edem = create(:user)
    	@comment = create(:comment)
    end

    scenario "when edem post a comments" do
    	sign_in(@edem)
    	visit("events/1")
    	click_on "poster un commentaire"
    	expect(page).to eq 1
    end


  end
end